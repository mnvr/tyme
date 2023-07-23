module Main where

import qualified Time (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  Time.someFunc
