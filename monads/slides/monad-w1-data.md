Using the data model from before lets assume the following.

```haskell
john = Person
        { firstName   = "John"
        , middleName  = Just "Edward"
        , lastName    = "Doe"
        , homeAddress = ...
        , workAddress = Just Address
                        { line1   = "123 W. Somewhere Dr."
                        , line2   = Just "Apt. 235"
                        , city    = "Kansas City"
                        , state   = "MO"
                        , zipCode = 64108 } }
```
