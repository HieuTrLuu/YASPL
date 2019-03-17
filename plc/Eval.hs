module Eval where
import Main

eval' :: (Expr, Environment) -> (Expr, Environment)
eval' ((Int_ a), _) = Int_ a
eval' ((Float_ a), _) = Float_ a
eval' ((True_), _) = True_
eval' ((False_), _) = False_
    
eval' ((List (x:xs)), []) | isValue (List (x:xs)) = ((List (x:xs)), [])
                          | otherwise = error "List is not valid"
-- not sure about the (eval' List xs env)
eval' ((List ((Var str):xs)), env) = (List (fst (getValueBinding str env):(eval' (List xs) env):[]), (snd (getValueBinding str1 env)))
        
eval' ((Pair e1 e2), []) | isValue (Pair e1 e2) = ((Pair e1 e2), [])
                         | otherwise = error "Pair is not valid"

eval' ((Pair (Var str1) e), env) | (isValue e) = (Pair (fst (getValueBinding str1 env)) e, (snd (getValueBinding str1 env)))
                             | otherwise = error "elt 1 of Pair is not valid"

eval' ((Pair e (Var str2)), env) | (isValue e) = (Pair e (fst (getValueBinding str2 env)), (snd (getValueBinding str1 env)))
                             | otherwise = error "elt 2 of Pair is not valid"

eval' ((Add (Int_ a) (Int_ b)), env) = ((Int_ (a+b)), env)

eval' ((Add (Var str1) e2), env) = (Add (fst (getValueBinding str1 env)) e2, (snd (getValueBinding str1 env)))

eval' ((Add e1 (Var str2)), env) = (Add e1 (fst (getValueBinding str2 env)), (snd (getValueBinding str1 env)))

eval'((Var str), env) = (getValueBinding str env) 

evalStatement' :: (Statement, Environment) -> (Statement, Environment)
evalStatement' (Assign (Inc str e)) env = (Assign (Def str return) ,update env str return)
  where expr = fst (getValueBinding str env)
        return = Add expr e

evalStatement' (Assign (Dec str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Sub expr e

evalStatement' (Assign (MultVal str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Mult expr e

evalStatement' (Assign (DivVal str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Div expr e

evalStatement' (Assign (Def str e)) env = (Assign (Def str e), update env str e)

evalStatement' (Return e) env = (Return e, env)


evalSection' :: (Block, Environment) -> (Environment ,Block)
evalSection' ((x:xs),env) = evalSection' (xs,(snd $ evalStatement' (e,env)))

evalProg' :: (Prog, Environment) -> (Prog, Environment)
evalProg' ((x:xs),env) = evalProg' (xs,(snd $ evalSection' (e,env)))

eval :: Expr -> Environment -> Expr
eval (Int_ a) env = Int_ a
eval (Float_ a) env = Float_ a
eval (True_) _ = True_
eval (False_) _ = False_
    
eval (List (x:xs)) [] | isValue (List (x:xs)) = (List (x:xs))
                      | otherwise = error "List is not valid"
-- not sure about the (eval List xs env)
eval (List ((Var str):xs)) env = List (fst (getValueBinding str env):(eval (List xs) env):[])
        
eval (Pair e1 e2) [] | isValue (Pair e1 e2) = (Pair e1 e2)
                     | otherwise = error "Pair is not valid"

eval (Pair (Var str1) e) env | (isValue e) = Pair (fst (getValueBinding str1 env)) e
                             | otherwise = error "elt 1 of Pair is not valid"

eval (Pair e (Var str2)) env | (isValue e) = Pair e (fst (getValueBinding str2 env))
                             | otherwise = error "elt 2 of Pair is not valid"

eval (Add (Int_ a) (Int_ b)) env = (Int_ (a+b))

eval (Add (Var str1) e2) env = Add (fst (getValueBinding str1 env)) e2

eval (Add e1 (Var str2)) env = Add e1 (fst (getValueBinding str2 env))

eval (Var str) env = fst (getValueBinding str env) 


--TODO: list comprehension

-- TODO: type checking
-- unpack :: Expr -> Environment -> (Expr,Environment)
-- unpack (Cl x e env1) env = ((Lam x e) , env1)
-- unpack e env = (e,env)
evalStatement :: Statement -> Environment -> (Statement, Environment)
evalStatement (Assign (Inc str e)) env = (Assign (Def str return) ,update env str return)
  where expr = fst (getValueBinding str env)
        return = Add expr e

evalStatement (Assign (Dec str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Sub expr e

evalStatement (Assign (MultVal str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Mult expr e

evalStatement (Assign (DivVal str e)) env = (Assign (Def str return), update env str return)
  where expr = fst (getValueBinding str env)
        return = Div expr e

evalStatement (Assign (Def str e)) env = (Assign (Def str e), update env str e)

evalStatement (Return e) env = (Return e, env)

-- evalBlock :: Block -> Environment -> Block
-- eavlBlock block env = [ (evalStatement x env) | x <- block]

-- evalProg :: Prog -> Environment -> Environment
evalProg :: Prog -> Environment -> Prog
evalProg prog env = [ (str, (evalSection block env)) | (str,block) <- prog ]



-- assign :: Environment -> String -> Expr -> Environment
evalSection :: Block -> Environment -> Block
evalSection block env = [fst (evalStatement statment env) | statment <- block ]

-- unparse :: Prog -> String
-- unparse (x:xs) = (unparse [x]) ++ "\n" ++ (unparse xs)
-- unparse 