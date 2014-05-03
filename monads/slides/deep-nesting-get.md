
Retrieving the breeder&#39;s name requires the following.

```haskell
getBreederName :: Person -> Maybe String
getBreederName p = case pet p of
                    Nothing -> Nothing
                    Just p  -> case mother p of
                                Nothing -> Nothing
                                Just m  -> case owner m of
                                            Nothing -> Nothing
                                            Just o  -> personName o                            
```

<div class="fragment">
    <p>Unless you use use The Maybe Monad.</p>

<pre><code class="haskell">getBreederName :: Person -> Maybe String
getBreederName p = pet p >>= mother >>= owner >>= personName
</code></pre>
</div>
