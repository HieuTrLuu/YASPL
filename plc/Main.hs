module Main where
import System.Environment
import Control.Applicative
import Data.List.Split
import Tokens
import Grammar
import Helper

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     t <- pure (alexScanTokens f)
     p <- pure (parseStreamLang t)
     input <- getContents
     input <- pure (map (map (read :: String->Int) . splitOn " ") (lines input))
    --  env <- pure (start p)
     print p
    --  execute p env input

libFunctions :: Environment
libFunctions = []

start :: Prog -> Environment
start p = runLine p (("_LINENUM_", Int_ 0):libFunctions)

getAsInt :: String -> Environment -> Int
getAsInt k env = case lookup k env of
                   Just (Int_ x) -> x
                   Nothing      -> error (k++" not defined.")

execute :: Prog -> Environment -> [[Int]] -> IO ()
execute _ _ [] = return ()
execute p env (x:xs) = do e <- pure (updateIdents x env 0)
                          l <- pure (getAsInt "_LINENUM_" e)
                          e <- pure (reassign e "_LINENUM_" (Int_ (l+1)))
                          e <- pure (runLine p e)
                          output e
                          execute p e xs

runLine :: Prog -> Environment -> Environment
runLine p env = case lookup "_LINENUM_" env of
                 Just (Int_ a) -> runSect (whichSect p a) p env

updateIdents :: [Int] -> Environment -> Int -> Environment
updateIdents [] env _ = env
updateIdents (x:xs) env a = updateIdents xs (reassign env ("$"++show a) (Int_ x)) (a+1)

formatOut :: Expr -> IO ()
formatOut (List []) = putStr "\n"
formatOut (List ((Int_ a):xs)) = do putStr ((show a)++" ")
                                    formatOut (List xs)
formatOut u = print u

output :: Environment -> IO ()
output env = case lookup "_OUTPUT_" env of
               Nothing -> print "0"
               Just a  -> formatOut a

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


assignType :: TEnvironment -> String -> Type -> TEnvironment
assignType tenv k v = (k, v):tenv


-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x typ e env1) env = ((Lam x typ e) , env1)
unpack e env = (e,env)

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
isValue (Cl _ _ _ _) = True
isValue _ = False

-- Function to iterate the small step reduction to termination
-- evalLoop :: Expr -> Expr
-- evalLoop e = evalLoop' (e,[],[])
--   where evalLoop' (e,env,k) = if (e' == e) && (isValue e') then e' else evalLoop' (e',env',k')
--                        where (e',env',k') = eval1 (e,env,k)


--TODO: need to embedded with type checker
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

eval' (Zip (List e1) (List e2), env) = (List pairs,env)
  where buffer = zip e1 e2
        pairs = [Pair (fst x) (snd x) | x <- buffer ]
eval' (Reverse (List e), env) = (List (reverse e), env)
eval' (Head (List e), env) = ( head e, env)
eval' (Tail (List e), env) = ( List (tail e), env)
eval' (Fst (Pair e1 e2), env) = ( e1, env)
eval' (Snd (Pair e1 e2), env) = ( e2, env)




eval' ((Lam str typ e), env) = ((Lam str typ e), env) 

-- eval' ((Lam str typ e), env) = ((Cl str e env), env)

eval' (App (Lam x typ e1) e2, env) = (eval e1 (reassign env x (eval e2 env)), env) -- TODO: fix this
-- eval' (App (Cl str' e' env') e2, env) = 
eval' (App e1 e2, env) = eval' (App (eval e1 env) e2, env) -- TODO: fix this

-- eval' 

--assumption: will always call the correct var (BE VERY CAREFUL with )
--base case
eval' (Comp (Var str) ((Member (Var str') (List (x:xs))):[]) , env) | str == str' = (List (x:xs), env)
                                                                    | otherwise = (List [], env)

-- eval' (Comp expr ((Member (Var str') (List (x:xs))):[]) , env) | 
--                                                                | otherwise = (List [], env)

--   where value = 


eval' (Comp (List (x:xs)) ((Prop (Lam str typ e)):[]), env) | (App (Lam str typ e) x) == True_ = (newList, env)
                                                        | (App (Lam str typ e) x) == False_ = (remainder, env)
                                                     where remainder = fst $ eval'(Comp (List xs) ((Prop (Lam str typ e)):[]), env)
                                                           newList = (combineList (List (x:xs)) (remainder))

listEnv :: Environment
listEnv = []

  --  Rule to make closures from lambda abstractions.
-- eval1 ((TmLambda x typ e),env,k) = ((Cl x typ typ e env), env, k)
    
  -- Evaluation rules for application
-- eval1 ((TmApp e1 e2),env,k) = (e1,env, (HApp e2 env) : k)
-- eval1 (v,env1,(HApp e env2):k ) | isValue v = (e, env2, (AppH v) : k)
-- eval1 (v,env1,(AppH (Cl x typ typ e env2) ) : k )  = (e, update env2 x v, k)
  
  -- Rule for runtime errors



evalMember :: Pred -> Maybe [Expr]
evalMember (Member e1 (List (x:xs))) = Just (x:xs) -- in case e1 is (Var str) e2 is List [expr] TODO: catch the exception using Monad
evalMember (Member _ _ ) = Nothing

evalProp :: Pred -> Maybe Expr -> Maybe Expr
evalProp (Prop e) (Just (List list)) = (Just (List [ (App e x) | x <- list ]))
evalProp _ _ = Nothing

-- evalComp :: Maybe Expr -> Maybe Expr
-- evalComp (Just (Comp expr ((Member (Var x) e2):xs))) = evalComp (Just (Comp (App (Lam x expr) e2) xs))
-- evalComp (Just (Comp expr ((Prop e):xs))) = evalComp ()
  
-- seperateCompMember :: Maybe Expr -> Maybe [Expr]
-- seperateCompMember (Just (Comp e [])) = (Just [])
-- seperateCompMember (Just (Comp e ((Member e1 e2):xs))) = Just (Comp e (Member e1 e2)):(seperateCompMember (Just (Comp e xs)))
-- seperateCompMember _ = Nothing

-- seperateCompProp :: Maybe Expr -> Maybe [Expr]
-- seperateCompProp (Just (Comp e [])) = (Just [])
-- seperateCompProp (Just (Comp e ((Prop x):xs))) = Just (Comp e ((Prop x):(seperateCompProp (Just (Comp e xs)))))
-- seperateCompProp _ = Nothing



-- evalComp :: (Comp Expr [Pred]) -> (List [Expr])
-- evalComp (Comp (Var str) [pred]) =

-- evalComp :: (Comp Expr [Pred]) -> Expr
-- start when there is only member expr
-- expected e' to be a list
-- evalComp (Comp (Var str) ((Lam str typ' e'):[])) | str == str' = e'
--                                              | otherwise = List []


-- can I apply functional programming here ?
-- can I apply any kind of monad here ?
-- can I just map the specific case then use monad ????
-- evalComp (Comp e ((Prop e'):[])) =

evalArith :: Expr -> Expr -> Environment -> (Int -> Int -> Int) -> (Expr, Environment)
evalArith (Int_ e1) (Int_ e2) env f = (Int_ (f e1 e2),env)
evalArith (List e1) (Int_ e2) env f = (List resultList, env)
  where resultList = [ fst (evalArith x (Int_ e2) env f) | x <- e1 ]
evalArith (Int_ e1) (List e2) env f = (List resultList, env)
  where resultList = [ fst (evalArith (Int_ e1) x env f) | x <- e2]
evalArith (List e1) (List e2) env f = (List resultList, env)
  where resultList = helperListFunction e1 e2 env f
evalArith (Int_ e1) e2 env f = evalArith (Int_ e1) (fst (eval' (e2, env))) env f
evalArith e1 (Int_ e2) env f = evalArith (fst (eval' (e1, env))) (Int_ e2) env f
evalArith (List e1) e2 env f = evalArith (List e1) (fst (eval' (e2, env))) env f
evalArith e1 (List e2) env f = evalArith (fst (eval' (e1, env))) (List e2) env f
evalArith e1 e2 env f = evalArith (fst (eval' (e1, env))) (fst (eval' (e2, env))) env f

helperListFunction :: [Expr] -> [Expr] -> Environment -> (Int -> Int -> Int) -> [Expr]
helperListFunction [] [] _ _ = []
helperListFunction (x:xs) (y:ys) env f = (fst (evalArith x y env f)):(helperListFunction xs ys env f)

evalBool :: Expr -> Expr -> Environment -> (Int -> Int -> Bool) -> (Expr, Environment)
evalBool (Int_ e1) (Int_ e2) env f = case f e1 e2 of
                                       True -> (True_, env)
                                       False -> (False_, env)
evalBool (Int_ e1) e2 env f = evalBool (Int_ e1) (fst (eval' (e2, env))) env f
evalBool e1 (Int_ e2) env f = evalBool (fst (eval' (e1, env))) (Int_ e2) env f
evalBool e1 e2 env f = evalBool (fst (eval' (e1, env))) (fst (eval' (e2, env))) env f








