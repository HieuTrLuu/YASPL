module Eval where

import Helper
import Tokens
import Grammar
import System.Environment
import Control.Applicative
import Data.List.Split
import Data.Char  






main = do
  argsList <- getArgs
  f <- readFile (head argsList)
  t <- pure (alexScanTokens f)
  p <- pure (parseStreamLang t)
  input <- getContents
  input <- pure (map (map (read :: String->Int) . splitOn " ") (lines input))
  env <- pure (start p)
  print p
  print env
  execute p env input