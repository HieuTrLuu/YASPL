
evalPred :: [Pred] -> (Lam String Expr)
evalPred (x:xs) = evalPred(x) : evalPred(xs)
evalPred [(Member (Var str) e2)] =  (Lam str e2)
evalPred (Prop Expr) =  

evalComp :: (Comp Expr [Pred]) -> (List [Expr])
evalComp (Comp (Var str) [pred]) = 

evalComp :: (Comp Expr [Pred]) -> Expr
start when there is only member expr
expected e' to be a list
evalComp (Comp (Var str) ((Lam str' e'):[])) | str == str' = e'
                                             | otherwise = List []


can I apply functional programming here ?
can I apply any kind of monad here ?
can I just map the specific case then use monad ????
evalComp (Comp e ((Prop e'):[])) = 
