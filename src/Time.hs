{-# LANGUAGE NumericUnderscores #-}

module Time where

import Control.Concurrent
import Data.Time

now :: IO String
now = do
  t <- Data.Time.getCurrentTime
  return (show t)

foreverNow :: IO ()
foreverNow = do
  Time.now >>= putStrLn
  threadDelay (3 * 1_000_000)
  foreverNow
