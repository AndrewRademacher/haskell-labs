
## The Maybe Monad

```haskell
instance Monad Maybe where
    (Just x) >>= k      = k x     -- Maybe a -> (a -> Maybe b) -> Maybe b
    Nothing  >>= _      = Nothing

    return x            = Just x  -- a -> Maybe a
```

<div class="fragment">
    <h4>Bind</h4>
    <p>If the input has a value, call function "k" on it, otherwise return Nothing.</p>
    <h4>Unit</h4>
    <p>Wrap a non-optional value in the Maybe type.</p>
</div>
