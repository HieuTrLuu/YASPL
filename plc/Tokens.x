{ 
module ToyTokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*        ; 
  $digit+        { tok (\p s -> TokenInt p (read s)) }
  "->"             { tok (\p s -> TokenTypeArr p) }
  \:             { tok (\p s -> TokenHasType p) }
  let            { tok (\p s -> TokenLet p ) }
  then           { tok (\p s -> TokenThen p) }

  bool           { tok (\p s -> TokenTypeBool p) } 
  true           { tok (\p s -> TokenTrue p) }
  false          { tok (\p s -> TokenFalse p) }

  function       { tok (\p s -> TokenTypeFunction p) }

  stream         { tok (\p s -> TokenTypeStream p) } 
  int            { tok (\p s -> TokenTypeInt p) }
  
  \<             { tok (\p s -> TokenLessThan p) }
  \>             { tok (\p s -> TokenMoreThan p) }
  \+             { tok (\p s -> TokenPlus p) }
  \*             { tok (\p s -> TokenMultiply p) }
  
  \-             { tok (\p s -> TokenMinus p) }
  =              { tok (\p s -> TokenEq p ) }
  \\             { tok (\p s -> TokenLambda p) }


  if             { tok (\p s -> TokenIf p) }
  else           { tok (\p s -> TokenElse p) }
  
  for            { tok (\p s -> TokenFor p) }  
  in             { tok (\p s -> TokenIn p ) }


  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }
  \[             { tok (\p s -> TokenLArray p) }
  \]             { tok (\p s -> TokenRArray p) }
  \{             { tok (\p s -> TokenLBlock p) }
  \}             { tok (\p s -> TokenRBlock p) }
  
  //TODO: decide whether to add string, var, let, argument, functions ?

  
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) }  

{
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- Helper function
tok f p s = f p s

-- The token type: 
data Token = 
  TokenHasType AlexPosn          |
  TokenVar AlexPosn String       |

  TokenTypeBool AlexPosn         |
  TokenTypeStream AlexPosn       |
  TokenTypeInt  AlexPosn         | 
  
  
  TokenInt AlexPosn Int          |
  TokenStream AlexPosn String    |
  TokenTrue AlexPosn             |
  TokenFalse AlexPosn            |

  TokenLessThan AlexPosn         |
  TokenMoreThan AlexPosn         |
  TokenPlus AlexPosn             |
  TokenMinus AlexPosn            |
  TokenMultiply AlexPosn         |

  TokenEq AlexPosn               |
  TokenLambda AlexPosn           |


  TokenIf AlexPosn               |
  TokenElse AlexPosn             |

  TokenFor AlexPosn              |
  TokenIn AlexPosn               |
  

  TokenLParen AlexPosn           |
  TokenRParen AlexPosn           |
  TokenLParen AlexPosn           |
  TokenRParen AlexPosn           |
  TokenLArray AlexPosn           |
  TokenRArray AlexPosn           |
  TokenLBlock AlexPosn           |
  TokenRBlock AlexPosn           |

  TokenVar AlexPosn String  
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

/**
*TODO: include more tokenPosn here
*/ 
}
