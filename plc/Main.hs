module Main where
import System.Environment
import Tokens
import Grammar

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     t <- pure (alexScanTokens f)
     --print t
     g <- pure (parseStreamLang t)
     print g

reformat :: [Token] -> [TToken]
reformat [] = []
reformat ((T _ t):ts) = t:reformat ts
