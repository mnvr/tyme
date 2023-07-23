module Time where

import Data.Time

now :: IO String
now = do
  t <- Data.Time.getCurrentTime
  return (show t)
