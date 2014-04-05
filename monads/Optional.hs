data Optional a = Null
                | NotNull a
                deriving (Eq, Show)

optional :: b -> (a -> b) -> Optional a -> b
optional nu _  (Null)      = nu
optional _  nn (NotNull x) = nn x

instance Monad Optional where
    (NotNull x) >>= k       = k x
    Null        >>= _       = Null

    return x                = NotNull x

data Address = Address
             { line1   :: String
             , line2   :: Optional String
             , city    :: String
             , state   :: String
             , zipCode :: Int }

data Person = Person
            { firstName  :: String
            , middleName :: Optional String
            , lastName   :: String
            , address    :: Optional Address }

john = Person
     { firstName  = "John"
     , middleName = NotNull "Edward"
     , lastName   = "Doe"
     , address    = NotNull Address
                  { line1   = "123 W. Somewhere Dr."
                  , line2   = NotNull "Apt. 334"
                  , city    = "Kansas City"
                  , state   = "Missouri"
                  , zipCode = 64108 } }

jane = Person
     { firstName  = "Jane"
     , middleName = Null
     , lastName   = "Doe"
     , address    = Null }

getLine2 :: Person -> Optional String
getLine2 p = optional (Null)
                      (\addr -> optional (Null)
                                         (\l2 -> NotNull l2)
                                         (line2 addr))
                      (address p)

main :: IO ()
main = do
        print (middleName john)
        print (middleName jane)

        print (address john >>= line2)
        print (address jane >>= line2)
