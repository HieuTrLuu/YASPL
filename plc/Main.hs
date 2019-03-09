module Main where
import System.Environment
import Tokens
-- import Grammar

main = do
     argsList <- getArgs
     f <- readFile (head argsList)
     let t = reformat (alexScanTokens f) in
         putStrLn (show t)
    --  let parsedProg = parseCalc (alexScanTokens f)
    --  putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")


reformat :: [Token] -> [TToken]
reformat [] = []
reformat ((T _ t):ts) = t:reformat ts
