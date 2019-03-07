module Main where
import System.Environment
import Tokens

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     let t = reformat (alexScanTokens f) in
		 putStrLn (show t)

reformat :: [Token] -> [TToken]
reformat [] = []
reformat ((T _ t):ts) = t:reformat ts
