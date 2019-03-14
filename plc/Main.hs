module Main where
import System.Environment
import Tokens
import Grammar

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     let t = (alexScanTokens f) in (let g = (parseStreamLang t) in (print g))

reformat :: [Token] -> [TToken]
reformat [] = []
reformat ((T _ t):ts) = t:reformat ts
