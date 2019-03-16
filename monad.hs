import System.Environment
import Control.Exception
import System.IO
import Control.Monad

whileM :: (Monad m, MonadPlus f) => (a -> m Bool) -> m a -> m (f a)
whileM p f = go where
  go = do
    x <- f
    r <- p x
    if r then (return x `mplus`) `liftM` go else return mzero

test2 :: IO [String]
test2 = whileM (return . (/= "quit")) getLine
-- *Main> test2
-- quit
-- []
-- *Main> test2
-- 1
-- 2
-- 3
-- quit
-- ["1","2","3"]

power2 :: IO (Maybe Char)
power2 = whileM (return . (/= 'q')) getChar
-- *Main> power2
-- q
-- Nothing
-- *Main> power2
-- 1
-- 2
-- 3
-- q
-- Just '\n'

-- src : https://stackoverflow.com/questions/17719620/while-loop-in-haskell-with-a-condition

-- main :: IO ()
-- main = catch main' noParse

-- main' = do (fileName : _ ) <- getArgs 
--            sourceText <- readFile fileName
--            let output = test2 (show sourceText)
--            putStrLn (show output)
           

           


-- noParse :: ErrorCall -> IO ()
-- noParse e = do let err =  show e
--                hPutStr stderr err
--                return ()
