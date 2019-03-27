module Eval where
import System.Environment
import Control.Applicative
import Data.List.Split
import Tokens
import Grammar
import Helper
import Data.Char  

data Frame = HCompare Expr Environment 
              | CompareH Expr
              | HAdd Expr Environment | AddH Expr
              | HPair Expr Environment | PairH Expr
              | FstH | SndH 
              | HIf Expr Expr
              | HApp Expr Environment | AppH Expr
type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)



-- Look up a value in an environment and unpack it
-- getValueBinding is only used for eval1 (small step reductions) methods
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding k env = case lookup k env of
                         Just e -> (e, env)
                         Nothing -> error (k++" is undefined")



update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

updateBlock :: Prog -> String -> Block -> Prog
updateBlock env x e = (x,e) : env


-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (Int_ x) = True
isValue (Float_ x) = True
isValue True_ = True
isValue False_ = True
isValue (Ident a) = True
isValue (Cl _ _ _ ) = True
isValue _ = False

--TODO: need to embedded with type checker



assign :: Environment -> String -> Expr -> Environment
assign env k v = (k, v):env

reassign :: Environment -> String -> Expr -> Environment
reassign env k v = assign (unassign k env) k v

reassign' :: Environment -> String -> Expr -> Maybe Environment
reassign' [] _ _ = Nothing
reassign' ((k1, v1):env) k2 v2 | k1 == k2 = Just ((k2, v2):env)
                              | otherwise = reassign' env k2 v2

unassign :: String -> Environment -> Environment
unassign k env = unassign' k env []

unassign' :: String -> Environment -> Environment -> Environment
unassign' _ [] env2 = env2
unassign' s ((k,v):env1) env2 | s == k = env1++env2
                              | otherwise = unassign' s env1 ((k,v):env2)

whichSect :: Prog -> Int -> String
whichSect _ 0 = "start"
whichSect ((s, _):sects) a = case parseSectName s of
                               []     -> whichSect sects a
                               [b]    -> if a >= b then (show b)++"+" else whichSect sects a
                               [b, c] -> if a >= b && a <= c then (show b)++"-"++(show c) else whichSect sects a

parseSectName :: String -> [Int]
parseSectName s = case last s of
                    't' -> []
                    '+' -> [read (init s) :: Int]
                    _ -> map (read :: String -> Int) (splitOn " " s)

runSect :: String -> Prog -> Environment -> Environment
runSect _ [] env = env
runSect s1 ((s2, b):sects) env | s1 == s2 = runBlock b env
                               | otherwise = runSect s1 sects env

runBlock :: Block -> Environment -> Environment
runBlock [] env = env
runBlock (x:xs) env = runBlock xs (runStatement x env)

runStatement :: Statement -> Environment -> Environment
runStatement (Return exprs) env = reassign env "_OUTPUT_" (eval (List exprs) env)
runStatement (Assign a) env = runAssignment a env

runAssignment :: Assignment -> Environment -> Environment
runAssignment (Def s v) env = reassign env s (eval v env)
runAssignment (Inc s v) env = case lookup s env of
                                (Just old) -> reassign env s (eval (Add old v) env)
                                Nothing -> env
runAssignment (Dec s v) env = case lookup s env of
                                (Just old) -> reassign env s (eval (Sub old v) env)
                                Nothing -> env
runAssignment (MultVal s v) env = case lookup s env of
                                (Just old) -> reassign env s (eval (Mult old v) env)
                                Nothing -> env
runAssignment (DivVal s v) env = case lookup s env of
                                (Just old) -> reassign env s (eval (Div old v) env)
                                Nothing -> env

eval :: Expr -> Environment -> Expr
eval e env = fst (eval' (e, env))

eval1 :: State -> State
eval1 ((Var x),env,k) = (e',env',k) 
                    where (e',env') = getValueBinding x env
                  
-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Evaluation rules for less than operator

eval1 ((Int_ n),env1,(HCompare e env2):k) = (e,env2,(CompareH (Int_ n)) : k)
eval1 ((Int_ m),env,(CompareH (Int_ n)):k) | n < m = (True_,env,k)
                                             | otherwise = (False_,env,k)

-- Evaluation rules for plus operator
eval1 ((Add e1 e2),env,k) = (e1,env,(HAdd e2 env):k)
eval1 ((Int_ n),env1,(HAdd e env2):k) = (e,env2,(AddH (Int_ n)) : k)
eval1 ((Int_ m),env,(AddH (Int_ n)):k) = (Int_ (n + m),env,k)

-- Evaluation rules for projections
--TODO: to be created
-- eval1 ((Fst e1),env,k) = (e1,env, FstH : k)
-- eval1 ((Snd e1),env,k) = (e1,env, SndH : k)
eval1 ((Pair v w),env, FstH:k) | isValue v && isValue w = ( v , env , k)
eval1 ((Pair v w),env, SndH:k) | isValue v && isValue w = ( w , env , k)

-- Evaluation rules for pairs
eval1 ((Pair e1 e2),env,k) = (e1,env,(HPair e2 env):k)
eval1 (v,env1,(HPair e env2):k) | isValue v = (e,env2,(PairH v) : k)
eval1 (w,env,(PairH v):k) | isValue w = ( (Pair v w),env,k)

-- Evaluation rules for if-then-else
eval1 ((If e1 e2 e3),env,k) = (e1,env,(HIf e2 e3):k)
eval1 (True_,env,(HIf e2 e3):k) = (e2,env,k)
eval1 (False_,env,(HIf e2 e3):k) = (e3,env,k)


--  Rule to make closures from lambda abstractions.
eval1 ((Lam x e),env,k) = ((Cl x e env), env, k)

-- Evaluation rules for application
eval1 ((App e1 e2),env,k) = (e1,env, (HApp e2 env) : k)
eval1 (v,env1,(HApp e env2):k ) | isValue v = (e, env2, (AppH v) : k)
eval1 (v,env1,(AppH (Cl x e env2) ) : k )  = (e, update env2 x v, k)

-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"


-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k) 


eval' :: (Expr, Environment) -> (Expr, Environment)
eval' (Int_ a, env) = (Int_ a, env)
eval' (Float_ a, env) = (Float_ a, env)
eval' (True_, env) = (True_, env)
eval' (False_, env) = (False_, env)
eval' (Ident a, env) = getValueBinding ("$"++(show a)) env
eval' (List l, env) = (List [eval e env | e <- l], env)
eval' (Pair e1 e2, env) = (Pair (eval e1 env) (eval e2 env), env)

eval' (Add e1 e2, env) = evalArith e1 e2 env (+)
eval' (Sub e1 e2, env) = evalArith e1 e2 env (-)
eval' (Mult e1 e2, env) = evalArith e1 e2 env (*)
eval' (Div e1 e2, env) = evalArith e1 e2 env div
eval' (Mod e1 e2, env) = evalArith e1 e2 env mod
eval' (Exponent e1 e2, env) = evalArith e1 e2 env (^)

eval' (Cons e1 (List e2), env) = (List (eval e1 env:e2), env)
eval' (Cons e1 e2, env) = eval' (Cons e1 (eval e2 env), env)
eval' (Append (List e1) (List e2), env) = eval' (List (e1++e2), env)
eval' (Append a@(List e1) e2, env) = eval' (Append a (eval e2 env), env)
eval' (Append e1 b@(List e2), env) = eval' (Append (eval e1 env) b, env)
eval' (Index (List e1) (Int_ e2), env) = eval' (e1!!e2, env)
eval' (Index (List e1) e2, env) = eval' (Index (List e1) (eval e2 env), env)
eval' (Index e1 (Int_ e2), env) = eval' (Index (eval e1 env) (Int_ e2), env)
eval' (Index e1 e2, env) = eval' (Index (eval e1 env) e2, env)

eval' ((Var str), env) = (getValueBinding str env)

eval' ((If e1 e2 e3), env) | fst ( eval' (e1,env)) == True_ = (eval' (e2, env))
                           | otherwise = (eval' (e3, env))

eval' (Less e1 e2, env) = evalBool e1 e2 env (<)
eval' (More e1 e2, env) = evalBool e1 e2 env (>)
eval' (LessEq e1 e2, env) = evalBool e1 e2 env (<=)
eval' (MoreEq e1 e2, env) = evalBool e1 e2 env (>=)
eval' (Equal e1 e2, env) = evalBool e1 e2 env (==)
eval' (NEqual e1 e2, env) = evalBool e1 e2 env (/=)

eval' (And e1 e2, env) | (eval e1 env == True_) && (eval e2 env == True_) = (True_, env)
                       | otherwise = (False_, env)

eval' (Or e1 e2, env)  | eval e1 env == True_ = (True_, env)
                       | eval e2 env == True_ = (True_, env)
                       | otherwise = (False_, env)

eval' ((Lam str e), env) = ((Lam str e), env) 

-- eval' ((Lam str e), env) = ((Cl str e env), env)

eval' (App (Lam x e1) e2, env) = (eval e1 (reassign env x (eval e2 env)), env) -- TODO: fix this
-- eval' (App (Cl str' e' env') e2, env) = 
eval' (App e1 e2, env) = eval' (App (eval e1 env) e2, env) -- TODO: fix this

-- eval' 

--assumption: will always call the correct var (BE VERY CAREFUL with )
--base case
eval' (Comp (Var str) ((Member (Var str') (List (x:xs))):[]) , env) | str == str' = (List (x:xs), env)
                                                                    | otherwise = (List [], env)
-- eval' (Comp (List (x:xs)) ((Prop (Lam str e)):[]), env) | (App (Lam str e) x) == True_ = (newList, env)
--                                                         | (App (Lam str e) x) == False_ = (remainder, env)
--                                                      where remainder = fst $ eval'(Comp (List xs) ((Prop (Lam str e)):[]), env)
--                                                            newList = (combineList (List (x:xs)) (remainder))

eval' (Comp (Var x) ((Prop e):[]), env) | 
        where remainder = fst $ eval'(Comp (List xs) ((Prop (Lam str e)):[]), env)
              newList = (combineList (List (x:xs)) (remainder))


evalArith :: Expr -> Expr -> Environment -> (Int -> Int -> Int) -> (Expr, Environment)
evalArith (Int_ e1) (Int_ e2) env f = (Int_ (f e1 e2),env)
evalArith (Int_ e1) e2 env f = evalArith (Int_ e1) (fst (eval' (e2, env))) env f
evalArith e1 (Int_ e2) env f = evalArith (fst (eval' (e1, env))) (Int_ e2) env f
evalArith e1 e2 env f = evalArith (fst (eval' (e1, env))) (fst (eval' (e2, env))) env f

evalBool :: Expr -> Expr -> Environment -> (Int -> Int -> Bool) -> (Expr, Environment)
evalBool (Int_ e1) (Int_ e2) env f = case f e1 e2 of
                                       True -> (True_, env)
                                       False -> (False_, env)
evalBool (Int_ e1) e2 env f = evalBool (Int_ e1) (fst (eval' (e2, env))) env f
evalBool e1 (Int_ e2) env f = evalBool (fst (eval' (e1, env))) (Int_ e2) env f
evalBool e1 e2 env f = evalBool (fst (eval' (e1, env))) (fst (eval' (e2, env))) env f




main = do
  argsList <- getArgs
  f <- readFile (head argsList)
  t <- pure (alexScanTokens f)
  p <- pure (parseStreamLang t)
  print p


instance Monad Expr where
    -- (>>=) :: Parser a -> (a -> Parser b) -> Parser b
p >>= f = P (\inp -> case parse p inp of
                        []        -> []
                        [(v,out)] -> parse (f v) out)



evalType (Append e1 e2) env = case (t1, t2) of
                               (TList t3, TList t4) -> if t3==t4 then t1 else
                                                          if t3 == TAny then (TList t4) else
                                                              if t4 == TAny then (TList t3) else
                                                                  error ("Cannot append list of type "++(show t4)++" to list of type "++(show t3))
                               _                    -> error ((show t1)++" ++ "++(show t2)++" is not defined")
                               where
                                 t1 = evalType e1 env
                                 t2 = evalType e2 env