{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    bool   { TokenTypeBool _ }
    true   { TokenTrue _ }
    false  { TokenFalse _ }

    Stream     { TokenInt _ $$ } 
    int     { TokenInt _ $$ } //what does $$ sign here means ? 

    if      { TokenIf _ } 
    else    { TokenElse _ }

    for     { TokemFor _ }
    in      { TokenIn _ }

    lam    { TokenLambda _ }


    '>'    { TokenMoreThan _ }
    '<'    { TokenLessThan _ }
    '+'    { TokenPlus _ }
    '-'    { TokenMinus _ }
    '*'    { TokenMultiply _ }
    
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
    | stream                                    { TmStream $1 }
    | true                                      { TmTrue }
    | false                                     { TmFalse } 
    | '('')'                                    { TmUnit }
    | '(' Exp ',' Exp ')'                       { TmPair $2 $4 }
    | Exp '<' Exp                               { TmCompare $1 $3 } 
    | Exp '+' Exp                               { TmAdd $1 $3 }
    | if Exp '{' Exp '}' else '{' Exp '}'                  { TmIf $2 $4 $6 } 
    | lam '(' var ':' Type ')' Exp %prec APP    { TmLambda $3 $5 $7 }
    | Exp Exp %prec APP                         { TmApp $1 $2 } 
    | '(' Exp ')'                               { $2 }

Type : bool                     { TyBool } 
     | int                      { TyInt } 
     | strea,                     { TyStream }
     | Type arr Type            { TyFun $1 $3 } 


{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Int | TyBool | TyUnit | TyPair Type Type | TyFun Type Type
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmTrue | TmFalse | TmSt | TmCompare Expr Expr 
            | TmPair Expr Expr | TmAdd Expr Expr | TmVar String 
            | TmIf Expr Expr Expr | TmLet String Type Expr Expr //should we keep the let ?
            | TmLambda String Type Expr | TmApp Expr Expr 
            | Cl String Type Expr Environment
    deriving (Show,Eq)
} 