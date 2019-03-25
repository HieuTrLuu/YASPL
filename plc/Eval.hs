module Eval where

import Helper
import Tokens
import Grammar
import System.Environment
import Control.Applicative
import Data.List.Split
import Data.Char  



data Frame = HCompare Expr Environment 
              | CompareH Expr
              | HAdd Expr Environment | AddH Expr
              --TODO: others operations
              | HPair Expr Environment | PairH Expr
              | FstH | SndH
              | HeadH |TailH
              | ReverseH 
              -- |TODO: List 
              -- | Comp 
              | HIf Expr Expr | HLet String Type Expr 
              | HApp Expr Environment | AppH Expr
type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)








eval1 :: State -> State
eval1 ((Var x),env,k) = (e',env',k) 
                    where (e',env') = getValueBinding x env
                  
-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

eval1 ((Int_ n),env1,(HCompare e env2):k) = (e,env2,(CompareH (Int_ n)) : k)
eval1 ((Int_ m),env,(CompareH (Int_ n)):k) | n < m = (True_,env,k)
                                             | otherwise = (False_,env,k)

-- Evaluation rules for plus operator
eval1 ((Add e1 e2),env,k) = (e1,env,(HAdd e2 env):k)
eval1 ((Int_ n),env1,(HAdd e env2):k) = (e,env2,(AddH (Int_ n)) : k)
eval1 ((Int_ m),env,(AddH (Int_ n)):k) = (Int_ (n + m),env,k)

-- Evaluation rules for projections
--TODO: to be created
-- eval1 ((Fst e1),env,k) = (e1,env, FstH : k)
-- eval1 ((Snd e1),env,k) = (e1,env, SndH : k)
eval1 ((Pair v w),env, FstH:k) | isValue v && isValue w = ( v , env , k)
eval1 ((Pair v w),env, SndH:k) | isValue v && isValue w = ( w , env , k)

-- Evaluation rules for pairs
eval1 ((Pair e1 e2),env,k) = (e1,env,(HPair e2 env):k)
eval1 (v,env1,(HPair e env2):k) | isValue v = (e,env2,(PairH v) : k)
eval1 (w,env,(PairH v):k) | isValue w = ( (Pair v w),env,k)

-- Evaluation rules for if-then-else
eval1 ((If e1 e2 e3),env,k) = (e1,env,(HIf e2 e3):k)
eval1 (True_,env,(HIf e2 e3):k) = (e2,env,k)
eval1 (False_,env,(HIf e2 e3):k) = (e3,env,k)


--  Rule to make closures from lambda abstractions.
eval1 ((Lam x typ e),env,k) = ((Cl x typ e env), env, k)

-- Evaluation rules for application
eval1 ((App e1 e2),env,k) = (e1,env, (HApp e2 env) : k)
eval1 (v,env1,(HApp e env2):k ) | isValue v = (e, env2, (AppH v) : k)
eval1 (v,env1,(AppH (Cl x t e env2) ) : k )  = (e, update env2 x v, k)


-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"


-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k) 






main = do
  argsList <- getArgs
  f <- readFile (head argsList)
  t <- pure (alexScanTokens f)
  p <- pure (parseStreamLang t)
  input <- getContents
  input <- pure (map (map (read :: String->Int) . splitOn " ") (lines input))
  env <- pure (start p)
  print p
  execute p env input