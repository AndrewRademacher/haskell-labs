
import           System.Environment

main = do
        args <- getArgs
        let n = (read (args !! 0) :: Int)
        putStrLn (show (fibs !! (n-1)))

fibs = 1 : 1 : [ a + b | (a, b) <- zip fibs (tail fibs) ]
