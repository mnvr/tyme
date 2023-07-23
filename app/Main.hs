module Main where

import qualified Time

main :: IO ()
main = Time.now >>= putStrLn
