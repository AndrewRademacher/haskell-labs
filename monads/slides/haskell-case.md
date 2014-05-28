
But what about the second line of a work address?

<div class="fragment">
`workAddress` returns `"Maybe Address"` not `"Address"`.

<pre><code class="haskell">workAddress :: Person  -> Maybe Address
line2       :: Address -> Maybe String

-- line2 (workAddress person) == Compile-time type mismatch error.
</code></pre></div>

<div class="fragment">
So we have to handle the possibility of `Nothing`.

<pre><code class="haskell">person = Person { ... }

l2 = case workAddress person of
        Nothing   -> Nothing
        Just addr -> line2 addr
</code></pre></div>
