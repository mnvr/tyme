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

parseDuration :: [String] -> Int
parseDuration args = fromMaybe 3 b
  where
    a = (listToMaybe :: [String] -> Maybe String) args
    b = a >>= (readMaybeInt :: String -> Maybe Int)

-- return 3
-- return (fromMaybe 3 b)

-- eparseDuration = getArgs >>= (\args -> fromMaybe 3 $ readMaybeInt $ listToMaybe args)

readMaybeInt :: String -> Maybe Int
readMaybeInt = readMaybe

printMessage :: Int -> IO ()
printMessage d = putStrLn ("Every " ++ show d ++ " seconds I'll remind you, that I exist. I am time.")
