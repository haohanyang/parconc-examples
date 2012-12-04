-- <<fork
import Control.Concurrent
import Control.Monad
import System.IO

main = do
  hSetBuffering stdout NoBuffering -- <1>
  forkIO $ forever $ putChar 'A'   -- <2>
  forever $ putChar 'B'            -- <3>
-- >>
