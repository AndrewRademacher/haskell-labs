
## A Horrific Example

Lets assume that we have data of this structure.

```haskell
data Person = Person
        { personName :: Maybe String
        , pet        :: Maybe Pet
        }

data Pet = Pet
        { petName :: Maybe String
        , owner   :: Maybe Person
        , mother  :: Maybe Pet
        }
```

Example from [A Monad is not a Burrito](https://www.youtube.com/watch?v=46Z7Hq4fhN0)
