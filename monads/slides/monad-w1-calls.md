
Calling `workAddress` on `john` returns a value.

```haskell
workAddress :: Person -> Maybe Address

workAddress john == Just Address { ... }
```

<div class="fragment">
    <p>Calling <code>line2</code> on john&#39;s <code>workAddress</code> will also return a value.</p>

<pre><code class="haskell">line2 :: Address -> Maybe String

line2 (Address { ... }) == Just "Apt. 235"
</div>

<div class="fragment">
    <p>But, line2 can only take an "Address" as input, not a "Maybe Address"</p>
</div>
