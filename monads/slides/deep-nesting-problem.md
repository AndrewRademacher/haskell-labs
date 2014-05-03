
## A Horrific Example

```haskell
data Person = Person
        { personName :: Maybe String
        , pet        :: Maybe Pet
        } deriving (Eq, Show)

data Pet = Pet
        { petName :: Maybe String
        , owner   :: Maybe Person
        , mother  :: Maybe Pet
        } deriving (Eq, Show)
```

You need to find the name of the breeder for a person&#39;s pet.
