
Now, we can choose specifically which fields are optional.

```haskell
data Person = Person
            { firstName   :: String
            , middleName  :: Maybe String
            , lastName    :: String
            , homeAddress :: Address
            , workAddress :: Maybe Address
            }
```

```haskell
data Address = Address
            { line1   :: String
            , line2   :: Maybe String
            , city    :: String
            , state   :: String
            , zipCode :: Int
            }
```
