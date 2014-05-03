
We have a type mismatch which prevents a clean calling pattern.

```haskell
workAddress :: Person  -> Maybe Address
line2       :: Address -> Maybe String
```

<div class="fragment">
    <p>But, we can account for this with <code>bind</code>.</p>

<pre><code class="haskell">(>>=) :: Maybe a -> (a -> Maybe b) -> Maybe b
</code></pre>
</div>

<div class="fragment">
    <p>Therefore:</p>

<pre><code class="haskell">l2 = workAddress john >>= line2
-- l2 == Just "Apt. 235"

-- In this case
(>>=) :: Maybe Address -> (Address -> Maybe String) -> Maybe String
</code></pre>
</div>
