{-# LANGUAGE NumericUnderscores #-}

module Time where

import Control.Concurrent
import Data.Time

now :: IO String
now = do
  show <$> Data.Time.getCurrentTime

-- return (show t)

foreverNow :: Int -> IO ()
foreverNow t = do
  Time.now >>= putStrLn
  threadDelay (t * 1_000_000)
  foreverNow t
