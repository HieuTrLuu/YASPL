{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
    ':'    { TokenHasType _ }

    var    { TokenVar _ $$ }
    bool   { TokenTypeBool _ }
    true   { TokenTrue _ }
    false  { TokenFalse _ }

    stream     { TokenStream _ $$ }
    int     { TokenInt _ $$ }

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
%right let
%right in
%nonassoc if
%nonassoc else
%left APP
%left '<'
%left '+'
%nonassoc int true false var '(' ')'

%%
Prog : ;                            {[]}
     | Sect Prog                    {$1:$2}
     | Sect                         {[$1]}

Sect : start '{' Block '}'          {("start", $3)}
     | end '{' Block '}'            {("end", $3)}
     | int '+' '{' Block '}'        {((show $1) ++"+", $4)}
     | int '-' int '{' Block '}'    {((show $1) ++ "-" ++ (show $3), $5)}
     | int '{' Block '}'            {(show $1, $3)}
     | string '{' Block '}'         {($1, $3)}

Block : Statement Block             {$1:$2}
      | Statement                   {[$1]}

Statement : return Expr             {Return $2}
          | Assignment              {Assign $1}

Assignment : String '=' Expr        {Def $1 $3}
           | String '+''=' Expr     {Inc $1 $4}
           | String '-''=' Expr     {Dec $1 $4}
           | String '*''=' Expr     {MultBy $1 $4}
           | String '/''=' Expr     {DivBy $1 $4}
           | String '+''+' Expr     {Inc $1 1}
           | String '-''-' Expr     {Dec $1 1}

Expr : int                          {Int_ $1}
     | float                        {Float_ $1}
     | true                         {True}
     | false                        {False}
     | '[' Conts ']'                {List $2}
     | '(' Expr ',' Expr ')'        {Pair $2 $4}
     | ident                        {Ident $1}
     | Expr '+' Expr                {Add $1 $3}
     | Expr '-' Expr                {Sub $1 $3}
     | Expr '*' Expr                {Mult $1 $3}
     | Expr '/' Expr                {Div $1 $3}
     | Expr '%' Expr                {Mod $1 $3}
     | Expr ':' Expr                {Cons $1 $3}
     | Expr '+''+' Expr             {Append $1 $4}
     | '(' Expr ')'                 {$2}
     | if Expr then Expr else Expr  {If $2 $4 $6}
     | lam string '-' '>' Expr      {Lam $2 $5}
     | Expr '<' Expr                {Less $1 $3}
     | Expr '>' Expr                {More $1 $3}
     | Expr '<' '=' Expr            {LessEq $1 $4}
     | Expr '>' '=' Expr            {MoreEq $1 $4}
     | Expr '=' '=' Expr            {Equal $1 $4}
     | string Args                  {Fun String $2}
     | Expr '!' '!' Expr            {Index $1 $4}
     | '{' Expr '|' Expr '}'        {Comp $2 $4}

Conts : ;                           {[]}
      | Expr                        {[$1]}
      | Expr ',' Conts              {$1:$3}

Args : ;                            {[]}
     | Expr                         {[$1]}
     | Expr Args                    {$1:$2}

{
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

type Prog = [Sect]

type Sect = (String, Block)

type Block = [Statement]

data Statement = Return Expr | Assign Assignment

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr

data Expr = Int_ Int | Float_ Float | True | False | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | Fun String [Expr]
          | Index Expr Expr | Comp Expr Expr
          deriving (Show,Eq)
}
