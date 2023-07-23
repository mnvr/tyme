module Main where

import Data.Maybe
import System.Environment
import Text.Read
import Time

main :: IO ()
main = do
  d <- parseDuration
  printMessage d
  foreverNow d

parseDuration :: IO Int
parseDuration = do
  args <- getArgs
  return $ fromMaybe 3 $ (listToMaybe args) >>= readMaybeInt

readMaybeInt :: String -> Maybe Int
readMaybeInt = readMaybe

printMessage :: Int -> IO ()
printMessage d = putStrLn ("Every " ++ (show d) ++ " seconds I'll remind you, that I exist. I am time.")
