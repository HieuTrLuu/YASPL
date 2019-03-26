{
module Grammar where
import Tokens
import Control.DeepSeq
import GHC.Generics (Generic, Generic1)
}

%name parseStreamLang
%tokentype { Token }
%error { parseError }
%token
    zip     { T _ TokenZip  }
    reverse     { T _ TokenReverse  }
    head     { T _ TokenHead  }
    tail     { T _ TokenTail  }
    fst     { T _ TokenFst  }
    snd     { T _ TokenSnd  }
    last    { T _ TokenLast  }
    init    { T _ TokenInit  }
    length  { T _ TokenLength  }
    elem    { T _ TokenElem  }
    take    { T _ TokenTake  }
    drop    { T _ TokenDrop  }
    lam    { T _ TokenLambda }
    string { T _ (TokenString $$) }
    ident  { T _ (TokenIdent $$) }
    int    { T _ (TokenInt $$) }
    float  { T _ (TokenFloat $$) }
    true   { T _ TokenTrue }
    false  { T _ TokenFalse  }
    return { T _ TokenReturn  }
    if     { T _ TokenIf  }
    then   { T _ TokenThen  }
    else   { T _ TokenElse  }
    '++'   { T _ TokenDoubleAdd  }
    '=='   { T _ TokenDoubleEqual  }
    '!='   { T _ TokenNotEqual  }
    '&&'   { T _ TokenAnd  }
    '||'   { T _ TokenOr  }
    '+='   { T _ TokenAddEqual  }
    '-='   { T _ TokenSubEqual  }
    '*='   { T _ TokenMultEqual  }
    '/='   { T _ TokenDivEqual  }
    '!!'   { T _ TokenIndex  }
    '<-'   { T _ TokenMember  }
    '->'   { T _ TokenArrow  }
    '<='   { T _ TokenLessEqual  }
    '>='   { T _ TokenMoreEqual  }
    ':'    { T _ TokenCons  }
    '>'    { T _ TokenMore  }
    '<'    { T _ TokenLess  }
    '+'    { T _ TokenAdd  }
    '-'    { T _ TokenSub  }
    '*'    { T _ TokenMult  }
    '/'    { T _ TokenDiv  }
    '%'    { T _ TokenMod  }
    '^'    { T _ TokenExponent  }
    '='    { T _ TokenEqual  }
    '('    { T _ TokenLParen  }
    ')'    { T _ TokenRParen  }
    '['    { T _ TokenLList  }
    ']'    { T _ TokenRList  }
    '{'    { T _ TokenLBlock  }
    '}'    { T _ TokenRBlock  }
    '|'    { T _ TokenLine }
    ','    { T _ TokenComma }
    t_int  { T _ TokenTypeInt}
    t_float  { T _ TokenTypeFloat}
    t_bool  { T _ TokenTypeBool}
    EOL    { T _ TokenEOL }


%nonassoc '>' '>=' '<' '<='
%nonassoc '==' '!='
%left '&&' '||'
%left '++'
%right ':'
%nonassoc '+=' '-=' '*=' '/='
%right '!!'
%nonassoc '<-'
%right '->'
%left '='
%left '+' '-'
%left '*' '/'
%left '%'
%right '^'
%left lam
%nonassoc ','
%nonassoc '|'
%nonassoc return
%nonassoc if then else
%nonassoc '[' ']' '{' '}' '(' ')'
%nonassoc string int float true false ident
%nonassoc APP

%%
Prog : {- empty -}                  {[]}
     | Sect Prog                    {$1:$2}

Sect : int '+' '{' Block '}'        {((show $1) ++"+", $4)}
     | int '-' int '{' Block '}'    {((show $1) ++ "-" ++ (show $3), $5)}
     | int '{' Block '}'            {(show $1, $3)}
     | string '{' Block '}'         {($1, $3)}

Block : Statement Block             {$1:$2}
      | Statement                   {[$1]}

Statement : return Args EOL         {Return $2}
          | Assignment EOL          {Assign $1}

Assignment : string '=' Expr        {Def $1 $3}
           | string '+=' Expr       {Inc $1 $3}
           | string '-=' Expr       {Dec $1 $3}
           | string '*=' Expr       {MultVal $1 $3}
           | string '/=' Expr       {DivVal $1 $3}

Expr : Expr Expr %prec APP          {App $1 $2}
     | int                          {Int_ $1}
     | float                        {Float_ $1}
     | true                         {True_}
     | false                        {False_}
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
     | Expr '++' Expr             {Append $1 $3}
     | '(' Expr ')'                 {$2}
     | if Expr then Expr else Expr  {If $2 $4 $6}
     | lam '(' string ':' T ')' '->' Expr      {Lam $3 $5 $8}
     | Expr '<' Expr                {Less $1 $3}
     | Expr '>' Expr                {More $1 $3}
     | Expr '<=' Expr            {LessEq $1 $3}
     | Expr '>=' Expr            {MoreEq $1 $3}
     | Expr '==' Expr            {Equal $1 $3}
     | Expr '!=' Expr            {NEqual $1 $3}
     | Expr '&&' Expr            {And $1 $3}
     | Expr '||' Expr            {Or $1 $3}
     | Expr '!!' Expr            {Index $1 $3}
     | '{' Expr '|' PredList '}'    {Comp $2 $4}
     | zip Expr Expr             {Zip $2 $3}
     | reverse Expr              {Reverse $2}
     | head Expr                 {Head $2}
     | tail Expr                 {Tail $2}
     | last Expr                 {Last $2}
     | init Expr                 {Init $2}
     | elem Expr Expr            {Elem $2 $3}
     | take Expr Expr            {Take $2 $3}
     | drop Expr Expr            {Drop $2 $3}
     | length Expr               {Length $2}
     | fst Expr                  {Fst $2}
     | snd Expr                  {Snd $2}

T : t_int {TInt}
  | t_bool {TBool}
  | t_float {TFloat}
  | '[' T ']' {TList $2}
  | '(' T ',' T ')' {TPair $2 $4}

Conts : {- empty -}                 {[]}
      | Expr ',' Conts              {$1:$3}
      | Expr                        {[$1]}

Args : Expr                       {[$1]}
     | Expr Args                  {$1:$2}

PredList : Pred ',' PredList        {$1:$3}
         | Pred                     {[$1]}

Pred : Expr '<-' Expr          {Member $1 $3}
     | Expr                         {Prop $1}

{
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:ts) = let (l, c) = tokenPosn t in error ("Parse error at "++show l++":"++show c)

type Prog = [Sect]

type Sect = (String, Block)

type Block = [Statement]

data Type = TInt | TFloat | TBool | TList Type | TPair Type Type | TFun Type Type | TAny
            deriving (Show,Eq)

instance NFData Type where
  rnf TInt = ()
  rnf TFloat = ()
  rnf TBool = ()
  rnf TAny = ()
  rnf (TList t) = rnf t
  rnf (TPair t1 t2) = let a = rnf t1 in rnf t2
  rnf (TFun t1 t2) = let a = rnf t1 in rnf t2

type Environment = [(String, Expr)]
type TEnvironment = [(String, Type)]


data Statement = Return [Expr] | Assign Assignment
               deriving (Eq, Show)

data Assignment = Def String Expr | Inc String Expr | Dec String Expr
                | MultVal String Expr | DivVal String Expr
                deriving (Eq, Show)

data Expr = Int_ Int | Float_ Float | True_ | False_ | List [Expr] | Pair Expr Expr
          | Ident Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr
          | Div Expr Expr | Mod Expr Expr | Cons Expr Expr | Append Expr Expr
          | If Expr Expr Expr | Lam String Type Expr | Less Expr Expr | More Expr Expr
          | LessEq Expr Expr | MoreEq Expr Expr | Equal Expr Expr | NEqual Expr Expr
          | App Expr Expr | Index Expr Expr | Comp Expr [Pred] | Exponent Expr Expr
          | Var String | And Expr Expr | Or Expr Expr
          | Head Expr | Tail Expr | Last Expr | Init Expr | Length Expr | Reverse Expr
          | Elem Expr Expr | Take Expr Expr | Drop Expr Expr | Zip Expr Expr
          | Fst Expr | Snd Expr
          | Cl String Type Expr Environment
          deriving (Show,Eq)

data Pred = Member Expr Expr | Prop Expr
          deriving (Eq, Show)
}
