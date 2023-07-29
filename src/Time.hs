{-# LANGUAGE NumericUnderscores #-}

module Time where

import Control.Concurrent
import Data.Time

now :: IO String
now = show <$> Data.Time.getCurrentTime

foreverNow :: Int -> IO ()
foreverNow t = do
  now >>= putStrLn
  threadDelay (t * 1_000_000)
  foreverNow t
