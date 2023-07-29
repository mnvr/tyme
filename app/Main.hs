module Main where

import Data.Maybe
import System.Environment
import Text.Read
import Time

main :: IO ()
main = do
  d <- parseDuration <$> getArgs
  printMessage d
  foreverNow d

-- | Try to parse and return, an integral duration value from the first entry in
-- the given list of strings. If that's not possible, return a default duration.
parseDuration :: [String] -> Int
parseDuration args = fromMaybe 3 $ listToMaybe args >>= readMaybe

printMessage :: Int -> IO ()
printMessage d = putStrLn ("Every " ++ show d ++ " seconds I'll remind you, that I exist. I am time.")
