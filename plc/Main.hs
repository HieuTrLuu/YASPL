module Main where
import System.Environment
import Tokens
import Grammar

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     t <- pure (alexScanTokens f)
     g <- pure (parseStreamLang t)
     print g
     print (snd $ evalProg' (g,[]))

-- i have declared these in Grammar.y
-- data Type = TInt | TFloat | TBool | TList Type | TPair Type Type | TFun Type Type
-- type Environment = [(String, Expr)]
-- type TEnvironment = [(String, Type)]
           



assign :: Environment -> String -> Expr -> Environment
assign env k v = (k, v):env

reassign :: Environment -> String -> Expr -> Maybe Environment
reassign [] _ _ = Nothing
reassign ((k1, v1):env) k2 v2 | k1 == k2 = Just ((k2, v2):env)
                              | otherwise = reassign env k2 v2

assignType :: TEnvironment -> String -> Type -> TEnvironment
assignType tenv k v = (k, v):tenv


-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x e env1) env = ((Lam x e) , env1)
unpack e env = (e,env)

-- Look up a value in an environment and unpack it
-- getValueBinding is only used for eval1 (small step reductions) methods
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e env
                              | otherwise = getValueBinding x env


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

-- Function to iterate the small step reduction to termination
-- evalLoop :: Expr -> Expr 
-- evalLoop e = evalLoop' (e,[],[])
--   where evalLoop' (e,env,k) = if (e' == e) && (isValue e') then e' else evalLoop' (e',env',k')
--                        where (e',env',k') = eval1 (e,env,k) 
    

--TODO: need to embedded with type checker
eval' :: (Expr, Environment) -> (Expr, Environment)
eval' ((Int_ a), env) = (Int_ a, env)
eval' ((Float_ a), env) = (Float_ a, env)
eval' ((True_), env) = (True_, env)
eval' ((False_), env) = (False_, env)
    
eval' ((List (x:xs)), []) | isValue (List (x:xs)) = ((List (x:xs)), [])
                          | otherwise = error "List is not valid"

eval' ((List ((Var str):xs)), env) = (List (fst (getValueBinding str env):(fst $ eval' ((List xs), env)):[]), snd (getValueBinding str env))
        
eval' ((Pair e1 e2), []) | isValue (Pair e1 e2) = ((Pair e1 e2), [])
                         | otherwise = error "Pair is not valid"

eval' ((Pair (Var str1) e), env) | (isValue e) = (Pair (fst (getValueBinding str1 env)) e, (snd (getValueBinding str1 env)))
                             | otherwise = error "elt 1 of Pair is not valid"

eval' ((Pair e (Var str2)), env) | (isValue e) = (Pair e (fst (getValueBinding str2 env)), (snd (getValueBinding str2 env)))
                             | otherwise = error "elt 2 of Pair is not valid"

eval' ((Add (Int_ a) (Int_ b)), env) = ((Int_ (a+b)), env)

eval' ((Add (Var str1) e2), env) = (Add (fst (getValueBinding str1 env)) e2, (snd (getValueBinding str1 env)))

eval' ((Add e1 (Var str2)), env) = (Add e1 (fst (getValueBinding str2 env)), (snd (getValueBinding str2 env)))

eval' ((Var str), env) = (getValueBinding str env)

eval' ((If e1 e2 e3), env) | fst ( eval' (e1,env)) == True_ = (eval' (e2, env))
                           | otherwise = (eval' (e3, env))

eval' ((Lam str e), env) = ((Cl str e env), env)

-- eval' ((App e1 e2), env) = (((App (fst ( eval' (e1,env)) (fst ( eval'( e2,env))), env))))
eval' ((App e1 e2), env) = ((App expr1 expr2), env)
  where expr1 = fst (eval' (e1,env))
        expr2 = fst (eval' (e2,env))

eval' ((Comp (Var str) ((Lam str' e'):[])), env) | str == str' = (e', env)
                                                 | otherwise = (List [], env)



-- evalPred :: [Pred] -> (Lam String Expr)
-- evalPred (x:xs) = evalPred(x) : evalPred(xs)
-- evalPred [(Member (Var str) e2)] =  (Lam str e2)
-- evalPred (Prop Expr) =  

-- evalComp :: (Comp Expr [Pred]) -> (List [Expr])
-- evalComp (Comp (Var str) [pred]) = 

-- evalComp :: (Comp Expr [Pred]) -> Expr
-- start when there is only member expr
-- expected e' to be a list
evalComp (Comp (Var str) ((Lam str' e'):[])) | str == str' = e'
                                             | otherwise = List []


-- can I apply functional programming here ?
-- can I apply any kind of monad here ?
-- can I just map the specific case then use monad ????
evalComp (Comp e ((Prop e'):[])) = 







-- TODO: list comprehension expression



evalStatement' :: (Statement, Environment) -> (Statement, Environment)
evalStatement' ((Assign (Inc str e)), env) = (Assign (Def str return) ,update env str return)
  where expr = fst (getValueBinding str env)
        return = Add expr e

evalStatement' ((Assign (Dec str e)),env) = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Sub expr e

evalStatement' ((Assign (MultVal str e)), env) = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Mult expr e

evalStatement' ((Assign (DivVal str e)), env) = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Div expr e

evalStatement' ((Assign (Def str e)), env) = (Assign (Def str e), update env str e)

--where Closure comes in
evalStatement' ((Return e), env) = (Return e, env)


evalSection' :: (Block, Environment) -> (Block, Environment)
evalSection' ((x:[]),env) = (x:[],(snd $ evalStatement' (x,env)))
evalSection' ((x:xs),env) = evalSection' (xs,(snd $ evalStatement' (x,env)))

evalProg' :: (Prog, Environment) -> (Prog, Environment)
evalProg' ((str,block):[],env) = ((str, fst $ evalSection' (block,env)):[], snd $ evalSection' (block,env))
evalProg' ((x:xs),env) = evalProg' (xs,(snd $ evalSection' (snd x,env)))

