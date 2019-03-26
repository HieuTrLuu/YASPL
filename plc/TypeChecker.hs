module TypeChecker where
import Grammar

evalType :: Expr -> TEnvironment -> Type
evalType (Int_ _) _ = TInt
evalType (Float_ _) _ = TFloat
evalType True_ _ = TBool
evalType False_ _ = TBool
evalType (Ident _) _ = TInt
evalType (Var a) env = case lookup a env of
                        Just t  -> t
                        Nothing -> error (a++"is undefined")

evalType (List a) env = TList (evalListType a env)
evalType (Pair e1 e2) env | t1 == t2  = t1
                          | otherwise = error ("Mismatched types in pair: "++(show t1)++" and "++(show t2))
                            where
                             t1 = evalType e1 env
                             t2 = evalType e2 env

evalType (Add e1 e2) env = evalArithType (evalType e1 env) (evalType e2 env) "+"
evalType (Sub e1 e2) env = evalArithType (evalType e1 env) (evalType e2 env) "-"
evalType (Mult e1 e2) env = evalArithType (evalType e1 env) (evalType e2 env) "*"
evalType (Div e1 e2) env = evalArithType (evalType e1 env) (evalType e2 env) "/"
evalType (Exponent e1 e2) env | t2 /= TInt = error ((show t1)++" ^ "++(show t2)++" is not defined")
                              | t1 /= TInt && t1 /= TBool = error ((show t1)++" ^ "++(show t2)++" is not defined")
                              | otherwise = t1
                                where
                                  t1 = evalType e1 env
                                  t2 = evalType e2 env
evalType (Mod e1 e2) env | t1 /= TInt || t2 /= TInt = error ((show t1)++" % "++(show t2)++" is not defined")
                         | otherwise = TInt
                           where
                             t1 = evalType e1 env
                             t2 = evalType e2 env

evalType (Cons e1 e2) env = case t2 of
                              TList t3 -> if t1 == t3 then t2 else error ("Cannot add element of type "++(show t1)++" to list of type "++(show t3))
                              _      -> error ("Right hand side of : must be a list")
                              where
                                t1 = evalType e1 env
                                t2 = evalType e2 env

evalType (Append e1 e2) env = case (t1, t2) of
                               (TList t3, TList t4) -> if t3==t4 then t1 else error ("Cannot append list of type "++(show t4)++" to list of type "++(show t3))
                               _                    -> error ((show t1)++" ++ "++(show t2)++" is not defined")
                               where
                                 t1 = evalType e1 env
                                 t2 = evalType e2 env

evalType (If e1 e2 e3) env | t1 /= TBool = error "Conditional of an if statement must have type TBool"
                           | t2 /= t3 = error ("then branch of if statement has type "++(show t2)++" but else branch has type "++(show t3))
                           | otherwise = t2
                             where
                               t1 = evalType e1 env
                               t2 = evalType e2 env
                               t3 = evalType e3 env

evalType (TLam e1 e2) env = TFun TAny (evalType e2 ((e1, TAny):env))
evalType (TApp e1 e2) env = evalType e2 env

evalType _ _ = error "Unknown error"

evalListType :: [Expr] -> TEnvironment -> Type
evalListType [] _ = TAny
evalListType [e] env = evalType e env
evalListType (e:es) env | t1 == t2  = t1
                        | otherwise = error "Mismatched types in list"
                          where
                            t1 = evalType e env
                            t2 = evalListType es env

evalArithType :: Type -> Type -> String -> Type
evalArithType TFloat TInt _ = TFloat
evalArithType TInt TFloat _ = TFloat
evalArithType TFloat TFloat _ = TFloat
evalArithType TInt TInt _ = TInt
evalArithType t1 t2 op = error ((show t1)++" "++op++" "++(show t2)++" is not defined")
