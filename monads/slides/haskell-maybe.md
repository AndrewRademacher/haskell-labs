
## The Maybe Type

The base haskell library gives us a way to handle optional values.

```haskell
data Maybe a = Nothing
             | Just a
             deriving (Eq, Show)
```

<div class="fragment">
Maybe is polymorphic, and can hold values of any type.

<pre><code class="haskell">x :: Maybe Int
y :: Maybe String
z :: Maybe Bool
</code></pre>
</div>

<div class="fragment">
A Maybe can hold either `Nothing` or `Just` a value of the type provided.

<pre><code class="haskell">x = Nothing
y = Just "Hello, World!"
z = Just False
</code></pre>
</div>
