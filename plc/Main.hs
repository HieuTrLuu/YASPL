module Main where
import Tokens

main = do f <- readFile "input"
          t <- alexScanTokens f
		  print t