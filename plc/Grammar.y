{
module Grammar where
import Tokens
}

%name parseStreamLang
%tokentype { Token }
%error { parseError }
%token
    lam    { TokenLambda _ }
    string { TokenString _ $$ }
    ident  { TokenIdent _ $$ }
    int    { TokenInt _ $$ }
    float  { TokenFloat _ $$ }
    true   { TokenTrue _ }
    false  { TokenFalse _ }
    return { TokenReturn _ }
    if     { TokenIf _ }
    then   { TokenThen _ }
    else   { TokenElse _ }
	'++'   { TokenDoubleAdd _ }
	'--'   { TokenDoubleSub _ }
    ':'    { TokenCons _ }
    '>'    { TokenMore _ }
    '<'    { TokenLess _ }
    '+'    { TokenAdd _ }
    '-'    { TokenSub _ }
    '*'    { TokenMult _ }
    '/'    { TokenDiv _ }
    '%'    { TokenMod _ }
    '^'    { TokenExponent _ }
    '='    { TokenEqual _ }
    '('    { TokenLParen _ }
    ')'    { TokenRParen _ }
    '['    { TokenLList _ }
    ']'    { TokenRList _ }
    '{'    { TokenLBlock _ }
    '}'    { TokenRBlock _ }
    '|'    { TokenLine _ }
    '!'    { TokenExclamation _ }
    ','    { TokenComma }

%right lam
%left if then else
%nonassoc '>' '<'
%right ':'
%left '+' '-'
%left '*' '/'
%left '%'
%right '^'
%nonassoc '(' ')'
%nonassoc '{' '}'
%nonassoc '[' ']'
%nonassoc string int float true false return ident

%%
Prog : {- empty -}                  {[]}
     | Sect Prog                    {$1:$2}

Sect : int '+' '{' Block '}'        {((show $1) ++"+", $4)}
     | int '-' int '{' Block '}'    {((show $1) ++ "-" ++ (show $3), $5)}
     | int '{' Block '}'            {(show $1, $3)}
     | string '{' Block '}'         {($1, $3)}

Block : Statement Block             {$1:$2}
      | Statement                   {[$1]}

Statement : return Expr             {Return $2}
          | Assignment              {Assign $1}

Assignment : string '=' Expr        {Def $1 $3}
           | string '+''=' Expr     {Inc $1 $4}
           | string '-''=' Expr     {Dec $1 $4}
           | string '*''=' Expr     {MultBy $1 $4}
           | string '/''=' Expr     {DivBy $1 $4}
           | string '+''+' Expr     {Inc $1 1}
           | string '-''-' Expr     {Dec $1 1}

Expr : int                          {Int_ $1}
     | float                        {Float_ $1}
     | true                         {True}
     | false                        {False}
     | string                       {Var $1}
     | '[' Conts ']'                {List $2}
     | '(' Expr ',' Expr ')'        {Pair $2 $4}
     | ident                        {Ident $1}
     | Expr '+' Expr                {Add $1 $3}
     | Expr '-' Expr                {Sub $1 $3}
     | Expr '*' Expr                {Mult $1 $3}
     | Expr '/' Expr                {Div $1 $3}
     | Expr '^' Expr                {Exponent $1 $3}
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
     | string Args                  {Fun $1 $2}
     | Expr '!' '!' Expr            {Index $1 $4}
     | '{' Expr '|' PredList '}'    {Comp $2 $4}

Conts : {- empty -}                 {[]}
      | Expr ',' Conts              {$1:$3}

Args : {- empty -}                  {[]}
     | Expr Args                    {$1:$2}

PredList : Pred                     {[$1]}
         | Pred ',' PredList        {$1:$2}

Pred : string '<' '-' Expr          {Member $1 $4}
     | Expr                         {Prop $1}

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
          | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr | Var String
          deriving (Show,Eq)

data Pred = Member Expr Expr | Prop Expr
}
