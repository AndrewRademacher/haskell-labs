
Lets start with the data model from before.

```haskell
data Person = Person
            { firstName   :: String
            , middleName  :: String
            , lastName    :: String
            , homeAddress :: Address
            , workAddress :: Address
            } deriving (Eq, Show)
```

```haskell
data Address = Address
            { line1   :: String
            , line2   :: String
            , city    :: String
            , state   :: String
            , zipCode :: Int
            } deriving (Eq, Show)
```
