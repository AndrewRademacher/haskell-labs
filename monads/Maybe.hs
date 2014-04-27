import           Prelude hiding (Maybe (..))

data Maybe a = Nothing
             | Just a
             deriving (Eq, Show)

data Person = Person
            { firstName   :: String
            , middleName  :: Maybe String
            , lastName    :: String
            , homeAddress :: Maybe Address
            , workAddress :: Maybe Address
            } deriving (Eq, Show)

data Address = Address
            { line1   :: String
            , line2   :: Maybe String
            , city    :: String
            , state   :: String
            , zipCode :: Int
            } deriving (Eq, Show)

john :: Person
john = Person "John" (Just "Edward") "Doe"
        (Just (Address "123 W. Somewhere Dr." (Just "Apt. 334") "Kansas City" "Missouri" 64108))
        (Just (Address "432 N. Nowhere Dr." (Just "Ste. 43") "Kansas City" "Missouri" 64109))

jane :: Person
jane = Person "Jane" Nothing "Doe" Nothing Nothing


--  Non-Monadic Solution
getHomeLine2 :: Person -> Maybe String
getHomeLine2 p = case homeAddress p of
                    Nothing   -> Nothing
                    Just addr -> line2 addr

getWorkLine2 :: Person -> Maybe String
getWorkLine2 p = case workAddress p of
                    Nothing   -> Nothing
                    Just addr -> line2 addr

--  Monadic Solution
instance Monad Maybe where
    (Just x) >>= k      = k x
    Nothing  >>= _      = Nothing

    return              = Just

main :: IO ()
main = do
        print $ middleName john
        print $ middleName jane

        --print $ line2 $ homeAddress john
        --print $ line2 $ homeAddress jane

--  Non-Monadic Solution
        print $ getHomeLine2 john
        print $ getHomeLine2 jane

        print $ getWorkLine2 john
        print $ getWorkLine2 jane

--  Monadic Solution
        print $ homeAddress john >>= line2
        print $ homeAddress jane >>= line2

        print $ workAddress john >>= line2
        print $ workAddress jane >>= line2
