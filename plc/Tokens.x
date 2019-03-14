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
  "true"                        {\p s -> T p TokenTrue}
  "false"                       {\p s -> T p TokenFalse}
  "if"                          {\p s -> T p TokenIf}
  "then"                        {\p s -> T p TokenThen}
  "else"                        {\p s -> T p TokenElse}
  "return"                      {\p s -> T p TokenReturn}
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
  \!                            {\p s -> T p TokenExclamation}
  \,                            {\p s -> T p TokenComma}
  \|                            {\p s -> T p TokenLine}
  $alpha [$alpha $digit \_ \’]* {\p s -> T p (TokenString s)}

{
-- Each action has type :: AlexPosn -> String -> Token

-- The token type:
data Token = T AlexPosn TToken deriving (Eq, Show)
data TToken =
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
    TokenExclamation |
    TokenComma

}
