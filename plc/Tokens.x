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
  "--".*                        ; 
  $digit+ \. $digit+            {\p s -> T p (TokenFloat (read s))}
  $digit+                       {\p s -> T p (TokenInt (read s))}
  $alpha [$alpha $digit \_ \’]* {\p s -> T p (TokenVar s)}
  \$ $digit+                    {\p s -> T p (TokenIdent (read s))}
  "int"                         {\p s -> T p TokenTypeInt}
  "bool"                        {\p s -> T p TokenTypeBool}
  "list"                        {\p s -> T p TokenTypeList}
  "float"                       {\p s -> T p TokenTypeFloat}
  "true"                        {\p s -> T p TokenTrue}
  "false"                       {\p s -> T p TokenFalse}
  "if"                          {\p s -> T p TokenIf}
  "then"                        {\p s -> T p TokenThen}
  "else"                        {\p s -> T p TokenElse}
  "for"                         {\p s -> T p TokenFor}
  "in"                          {\p s -> T p TokenIn}
  "+="                          {\p s -> T p TokenPlusEquals}
  "-="                          {\p s -> T p TokenMinusEquals}
  "*="                          {\p s -> T p TokenMultEquals}
  "/="                          {\p s -> T p TokenDivEquals}
  "<="                          {\p s -> T p TokenLessEquals} 
  ">="                          {\p s -> T p TokenGreaterEquals}
  "++"                          {\p s -> T p TokenIncrement}
  "--"                          {\p s -> T p TokenDecrement}
  \;                            {\p s -> T p TokenEOL}
  \+                            {\p s -> T p TokenPlus}
  \-                            {\p s -> T p TokenMinus}
  \=                            {\p s -> T p TokenEq}
  \*                            {\p s -> T p TokenMult}
  \/                            {\p s -> T p TokenDiv}
  \<                            {\p s -> T p TokenLess}
  \>                            {\p s -> T p TokenGreater}
  \(                            {\p s -> T p TokenLParen}
  \)                            {\p s -> T p TokenRParen}
  \{                            {\p s -> T p TokenLParenCurly}
  \}                            {\p s -> T p TokenRParenCurly}
  \[                            {\p s -> T p TokenLParenSquare}
  \]                            {\p s -> T p TokenRParenSquare}

{
-- Each action has type :: AlexPosn -> String -> Token 

-- The token type: 
data Token = T AlexPosn TToken
data TToken = 
  TokenIdent Int |
  TokenInt Int |
  TokenFloat Float |
  TokenVar String |
  TokenTypeInt |
  TokenTypeBool |
  TokenTypeFloat |
  TokenTypeList |
  TokenTrue | 
  TokenFalse |
  TokenIf |
  TokenThen |
  TokenElse |
  TokenFor |
  TokenIn |
  TokenEOL |
  TokenPlus |
  TokenMinus |
  TokenEq |
  TokenMult |
  TokenDiv |
  TokenLParen |
  TokenRParen |
  TokenLParenCurly |
  TokenRParenCurly |
  TokenLParenSquare |
  TokenRParenSquare |
  TokenPlusEquals |
  TokenMinusEquals |
  TokenMultEquals |
  TokenDivEquals |
  TokenIncrement |
  TokenDecrement |
  TokenLessEquals |
  TokenGreaterEquals |
  TokenLess |
  TokenGreater |
  deriving (Eq,Show)

tokenPosn :: ToyToken -> String
tokenPosn (TokenHasType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeStream  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenTypeArr  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLessThan  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}
