
import           System.Environment

main = do
        args <- getArgs
        let n = (read (args !! 0) :: Int)
        putStrLn (show (fibs !! n))

fibs = 1 : 1 : [ a + b | (a, b) <- zip fibs (tail fibs) ]
