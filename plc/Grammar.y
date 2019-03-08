{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token
    var    { TokenVar _ $$ } 
    
    
    int     { TokenInt _ $$ }
    bool   { TokenTypeBool _ }
    list     { TokenList _ $$ } 
    float { TokenFloat _ $$ }
    true   { TokenTrue _ }
    false  { TokenFalse _ }


    if      { TokenIf _ } 
    then    { TokenThen _ }
    else    { TokenElse _ }

    for     { TokemFor _ }
    in      { TokenIn _ }

    print   { TokenPrint _ }

    "+="                          { TokenPlusEquals _ }
    "-="                          { TokenMinusEquals _ } 
    "*="                          { TokenMultEquals _ }
    "/="                          { TokenDivEquals _ }
    "<="                          { TokenLessEquals _ }
    ">="                          { TokenGreaterEquals _ }
    "++"                         { TokenIncrement _ }
    "--"                          { TokenDecrement _ }
    ';'                          { TokenEOF _ }
  
    '+'    { TokenPlus _ }
    '-'    { TokenMinus _ }
    '='    { TokenEqual _ }
    '*'    { TokenMul _ }
    '/'    { TokenDiv _ }
    '>'    { TokenLess _ }
    '<'    { TokenGreater _ }
    
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ }
    '['     { TokenLParenSquare _ }
    ']'     { TokenRParenSquare _ }
    '{'     { TokenLParenCurly _ }
    '}'     { TokenRParenCurly _ }


%right in
%nonassoc if
%nonassoc else
%left '<'
%left '+'
%nonassoc int true false var '(' ')'

%% 
Exp : int                                       { TmInt $1 } 
    | list                                      { TmList $1 }
    | true                                      { TmTrue }
    | false                                     { TmFalse } 
    | Exp '<' Exp                               { TmCompare $1 $3 } 
    | Exp '+' Exp                               { TmAdd $1 $3 }
    | if Exp then Exp else Exp                  { TmIf $2 $4 $6 } 
    | '(' Exp ')'                               { $2 }
    | print Exp                                 { TmPrint $1 }

Type : bool                     { TyBool } 
     | int                      { TyInt } 
     | list                     { TyList }


{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = TyInt | TyBool | TyList 
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmList | TmTrue | TmFalse  | TmCompare Expr Expr 
            | TmAdd Expr Expr | TmVar String
            | TmIf Expr Expr Expr 
            | TmLambda String Type Expr | TmApp Expr Expr 
            | Cl String Type Expr Environment
    deriving (Show,Eq)
} 