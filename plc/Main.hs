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

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

-- Checks for terminated expressions
isValue :: Expr -> Bool
isvalue (True_) = True
isvalue (False_) = True
isvalue (Int_ x) = True
isvalue (Float_ x) = True
isvalue (List (x:xs)) = (isValue x) && isvalue (List xs)
isValue (Pair x y) = ((isvalue x) && (isvalue y))
-- isvalue (Ident Int) = True

-- isvalue (cl a b c d) = True
-- isvalue _ = False

--Small step evaluation function
-- eval :: Expr -> Environment -> Expr
-- eval (Int_ a) -> Int_ a
-- eval (Float_ a) -> Float_ a
-- eval (True_) -> True_
-- eval (False_) -> False_
-- eval (List a) -> List {eval b | b <- a}
-- eval (Pair (a, b) = Pair (eval a, eval b))

-- output :: Expr -> Environment -> IO ()











    
    

