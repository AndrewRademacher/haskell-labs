
## Enter Monads

```haskell
class Monad m where
    (>>=)   :: M a -> (a -> M b) -> M b     -- bind

    return  :: a -> M a                     -- unit
```

<div class="fragment">
    <h4>Bind</h4>
    <p>The bind function applies an operation in a monadic context.</p>
    <h4>Unit</h4>
    <p>The unit function lifts a value into a monadic context.</p>
</div>
