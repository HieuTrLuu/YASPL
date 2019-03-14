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

data Type = TInt | TFloat | TBool | TList Type | TPair Type Type | TFun Type Type
type Environment = [(String, Expr)]
type TEnvironment = [(String, Type)]

assign :: Environment -> String -> Expr -> Environment
assign env k v = (k, v):env

reassign :: Environment -> String -> Expr -> Maybe Environment
reassign [] _ _ = Nothing
reassign ((k1, v1):env) k2 v2 | k1 == k2 = Just ((k2, v2):env)
                              | otherwise = reassign env k2 v2

assignType :: TEnvironment -> String -> Type -> TEnvironment
assignType tenv k v = (k, v):tenv

eval :: Expr -> Environment -> Expr
eval (Int_ a) -> Int_ a
eval (Float_ a) -> Float_ a
eval (True_) -> True_
eval (False_) -> False_
eval (List a) -> List {eval b | b <- a}
eval (Pair (a, b) = Pair (eval a, eval b))


output :: Expr -> Environment -> IO ()
