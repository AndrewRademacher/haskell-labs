
## Monad Laws

All monads follow this definition.

```haskell
class Monad m where
    (>>=)   :: M a -> (a -> M b) -> M b     -- bind

    return  :: a -> M a                     -- unit
```

And, all monads follow these laws.

```haskell
return a >>= k              = k a

m >>= return                = m

m >>= (\x -> k x >>= h)     = (m >>= k) >>= h
```
