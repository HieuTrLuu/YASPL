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

getValueBinding' :: String -> Environment -> Expr
getValueBinding' x [] = error "Variable binding not found"
getValueBinding' x ((y,e):env) | x == y = e 
                               | otherwise = getValueBinding' x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env


-- Don't think we need this function
-- unpackBlock :: Block -> Prog -> (Block,Prog)



-- Look up a block in a prog and unpack it
-- getBlockBinding :: String -> Prog -> (Block,Prog)
-- getBlockBinding x [] = error "Block binding not found"
-- getBlockBinding x ((y,e):env) | x == y  = unpack e env
--                               | otherwise = getBlockBinding x env

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
    
eval :: Expr -> Environment -> Expr
eval (Int_ a) env = Int_ a
eval (Float_ a) env = Float_ a
eval (True_) _ = True_
eval (False_) _ = False_
    
eval (List (x:xs)) [] | isValue (List (x:xs)) = (List (x:xs))
                      | otherwise = error "List is not valid"
-- not sure about the (eval List xs env)
eval (List ((Var str):xs)) env = List ((getValueBinding' str env):(eval (List xs) env):[])
        
eval (Pair e1 e2) [] | isValue (Pair e1 e2) = (Pair e1 e2)
                     | otherwise = error "Pair is not valid"

eval (Pair (Var str1) e) env | (isValue e) = Pair (getValueBinding' str1 env) e
                             | otherwise = error "elt 1 of Pair is not valid"

eval (Pair e (Var str2)) env | (isValue e) = Pair e (getValueBinding' str2 env)
                             | otherwise = error "elt 2 of Pair is not valid"

eval (Pair (Var str1) (Var str2)) env = Pair (getValueBinding' str1 env) (getValueBinding' str2 env)

eval (Add (Var str1) (Var str2)) env = Add (getValueBinding' str1 env) (getValueBinding' str2 env)
                                    --  | otherwise = error "2 expr is not valid to be added"

eval (Add (Int_ a) (Int_ b)) env = (Int_ (a+b))
--TODO: list comprehension

-- TODO: type checking
evalStatement :: Statement -> Environment -> Environment
evalStatement (Assign (Inc str e)) env= update env str (Add expr e)
  where expr = (getValueBinding' str env)
evalStatement (Assign (Dec str e)) env = update env str (Sub expr e)
  where expr = (getValueBinding' str env)
evalStatement (Assign (MultVal str e)) env = update env str (Mult expr e)
  where expr = (getValueBinding' str env)
evalStatement (Assign (DivVal str e)) env = update env str (Div expr e)
  where expr = (getValueBinding' str env)

-- evalStatement (Return (x:xs)) env = evalStatement (Return (eval x env):(eval xs )) env

-- evalBlock :: Block -> Environment -> Block
-- eavlBlock block env = [ (evalStatement x env) | x <- block]

-- evalProg :: Prog -> Environment -> Environment
-- evalProg prog [] = eval





