{-# LANGUAGE NumericUnderscores #-}

module Time where

import Control.Concurrent
import Data.Time

now :: IO String
now = show <$> Data.Time.getCurrentTime

foreverNow :: Int -> IO ()
foreverNow t = now >>= putStrLn >> threadDelay d >> foreverNow t
  where
    d = t * 1_000_000
