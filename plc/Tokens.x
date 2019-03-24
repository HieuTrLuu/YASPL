{
module Tokens where
}

%wrapper "posn"
$digit = 0-9
-- digits
$alpha = [a-zA-Z]
-- alphabetic characters

tokens :-
  $white+                       ;
  "//".*                        ;
  $digit+ \. $digit+            {\p s -> T p (TokenFloat (read s))}
  $digit+                       {\p s -> T p (TokenInt (read s))}
  \$ $digit+                    {\p s -> T p (TokenIdent (read (tail s)))}
  "::"                          {\p s -> T p TokenHasType}
  "let"                         {\p s -> T p TokenLet}
  "Bool"                        {\p s -> T p TokenTypeBool}
  "Int"                         {\p s -> T p TokenTypeInt}
  "Unit"                        {\p s -> T p TokenTypeUnit}
  "in"                          {\p s -> T p TokenIn}
  "zip"                        {\p s -> T p TokenZip}
  "reverse"                     {\p s -> T p TokenReverse}
  "head"                        {\p s -> T p TokenHead}
  "tail"                        {\p s -> T p TokenTail}
  "fst"                        {\p s -> T p TokenFst}
  "snd"                        {\p s -> T p TokenSnd}
  "true"                        {\p s -> T p TokenTrue}
  "false"                       {\p s -> T p TokenFalse}
  "if"                          {\p s -> T p TokenIf}
  "then"                        {\p s -> T p TokenThen}
  "else"                        {\p s -> T p TokenElse}
  "return"                      {\p s -> T p TokenReturn}
  "++"                          {\p s -> T p TokenDoubleAdd}
  "--"                          {\p s -> T p TokenDoubleSub}
  "=="                          {\p s -> T p TokenDoubleEqual}
  "&&"                          {\p s -> T p TokenAnd}
  "||"                          {\p s -> T p TokenOr}
  "+="                          {\p s -> T p TokenAddEqual}
  "-="                          {\p s -> T p TokenSubEqual}
  "*="                          {\p s -> T p TokenMultEqual}
  "/="                          {\p s -> T p TokenDivEqual}
  "!!"                          {\p s -> T p TokenIndex}
  "<-"                          {\p s -> T p TokenMember}
  "->"                          {\p s -> T p TokenArrow}
  "<="                          {\p s -> T p TokenLessEqual}
  ">="                          {\p s -> T p TokenMoreEqual}
  \\                            {\p s -> T p TokenLambda}
  \:                            {\p s -> T p TokenCons}
  \+                            {\p s -> T p TokenAdd}
  \-                            {\p s -> T p TokenSub}
  \=                            {\p s -> T p TokenEqual}
  \*                            {\p s -> T p TokenMult}
  \/                            {\p s -> T p TokenDiv}
  \%                            {\p s -> T p TokenMod}
  \^                            {\p s -> T p TokenExponent}
  \<                            {\p s -> T p TokenLess}
  \>                            {\p s -> T p TokenMore}
  \(                            {\p s -> T p TokenLParen}
  \)                            {\p s -> T p TokenRParen}
  \{                            {\p s -> T p TokenLBlock}
  \}                            {\p s -> T p TokenRBlock}
  \[                            {\p s -> T p TokenLList}
  \]                            {\p s -> T p TokenRList}
  \,                            {\p s -> T p TokenComma}
  \|                            {\p s -> T p TokenLine}
  \;                            {\p s -> T p TokenEOL}
  $alpha [$alpha $digit \_ \’]* {\p s -> T p (TokenString s)}

{
-- Each action has type :: AlexPosn -> String -> Token

-- The token type:
data Token = T AlexPosn TToken deriving (Eq, Show)
data TToken =
    TokenLet |
    TokenIn |
    TokenZip |
    TokenReverse |
    TokenHead |
    TokenTail |
    TokenFst |
    TokenSnd |
    TokenLambda |
    TokenString String|
    TokenIdent Int|
    TokenInt Int|
    TokenFloat Float|
    TokenTrue |
    TokenFalse |
    TokenReturn |
    TokenIf |
    TokenThen |
    TokenElse |
    TokenCons |
    TokenMore |
    TokenLess |
    TokenAdd |
    TokenSub |
    TokenMult |
    TokenDiv |
    TokenMod |
    TokenExponent |
    TokenEqual |
    TokenLParen |
    TokenRParen |
    TokenLList |
    TokenRList |
    TokenLBlock |
    TokenRBlock |
    TokenLine |
    TokenComma |
    TokenDoubleAdd |
    TokenDoubleSub |
    TokenDoubleEqual |
    TokenNotEqual |
    TokenAddEqual |
    TokenSubEqual |
    TokenMultEqual |
    TokenDivEqual |
    TokenIndex |
    TokenMember |
    TokenArrow |
    TokenLessEqual |
    TokenMoreEqual |
    TokenAnd |
    TokenOr |
    TokenHasType |
    TokenTypeBool |
    TokenTypeInt |
    TokenTypeUnit |
    TokenEOL
    deriving (Eq, Show)

tokenPosn :: Token -> (Int, Int)
tokenPosn (T (AlexPn _ l c) _) = (l, c)
}
