module Helper where
import Grammar

combineList :: Expr -> Expr -> Expr
combineList (List a) (List b) = List (merge a b)

merge [] ys = ys
merge (x:xs) ys = x:merge ys xs
