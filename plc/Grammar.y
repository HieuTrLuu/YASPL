{ 
module ToyGrammar where 
import ToyTokens 
}

%name parseCalc 
%tokentype { ToyToken } 
%error { parseError }
%token 
    bool   { TokenTypeBool _ }
    true   { TokenTrue _ }
    false  { TokenFalse _ }

    int     { TokenInt _ $$ } 

    if      { TokenIf _ } 
    else    { TokenElse _ }

    for { TokemFor _ }
    in { TokenIn _}


    '>'    { TokenMoreThan _ }
    '<'    { TokenLessThan _ }
    '+'    { TokenPlus _ }
    '-'    { TokenMinus _ }
    '*'    { TokenMultiply _ }
    '/'    { TokenDivide _ }
    '='    { TokenEqual _ }

    ';'     { TokenSeq _ }
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ }
    '['     { TokenLArray _ }
    ']'     { TokenRArray _ }
    '{'     { TokenLBlock _ }
    '}'     { TokenRBlock _ }


%left lam
%left arr
%right let
%right in
%nonassoc if
%nonassoc then
%nonassoc else
%left fst snd
%left APP
%left ','
%left '<'
%left '+'
%nonassoc int true false var '(' ')'

%% 
Exp : int                                       { TmInt $1 } 
    | var                                       { TmVar $1 }
    | true                                      { TmTrue }
    | false                                     { TmFalse } 
    | '('')'                                    { TmUnit }
    | '(' Exp ',' Exp ')'                       { TmPair $2 $4 }
    | Exp '<' Exp                               { TmCompare $1 $3 } 
    | Exp '+' Exp                               { TmAdd $1 $3 }
    | fst Exp                                   { TmFst $2 }
    | snd Exp                                   { TmSnd $2 }
    | if Exp then Exp else Exp                  { TmIf $2 $4 $6 } 
    | lam '(' var ':' Type ')' Exp %prec APP    { TmLambda $3 $5 $7 }
    | let '(' var ':' Type ')' '=' Exp in Exp   { TmLet $3 $5 $8 $10 }
    | Exp Exp %prec APP                         { TmApp $1 $2 } 
    | '(' Exp ')'                               { $2 }

Type : Bool                     { TyBool } 
     | Int                      { TyInt } 
     | Unit                     { TyUnit }
     | '(' Type ',' Type ')'    { TyPair $2 $4 }
     | Type arr Type            { TyFun $1 $3 } 


{ 
parseError :: [ToyToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data ToyType = TyInt | TyBool | TyUnit | TyPair ToyType ToyType | TyFun ToyType ToyType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmTrue | TmFalse | TmUnit | TmCompare Expr Expr 
            | TmPair Expr Expr | TmAdd Expr Expr | TmVar String 
            | TmFst Expr | TmSnd Expr
            | TmIf Expr Expr Expr | TmLet String ToyType Expr Expr
            | TmLambda String ToyType Expr | TmApp Expr Expr 
            | Cl String ToyType Expr Environment
    deriving (Show,Eq)
} 