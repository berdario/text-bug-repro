module Lib
    ( readTheSame
    ) where

import qualified Data.Text    as T
import qualified Data.Text.IO as T

filename = "testfile"

readTheSame :: IO Bool
readTheSame = do
    content1 <- T.pack <$> readFile filename
    content2 <- T.readFile filename
    return $ content1 == content2
