
We defined `bind` so that when it receives `Nothing` as an input, it simply returns `Nothing`.

```haskell
instance Monad Maybe where
    ...
    Nothing >>= _       = Nothing
    ...
```

In this case the second function is never called.

<div class="fragment">
<pre><code class="haskell">workAddress :: Person -> Maybe Address

workAddress jane == Nothing
</pre></code>
</div>

<div class="fragment">
    <p>Therefore:</p>

<pre><code class="haskell">l2 = workAddress jane >>= line2
-- l2 == Nothing
</pre></code>
</div>
