
What if we want a field to be optional, for example a `middleName`?

```haskell
john = Person
        { firstName  = "John"
        , middleName = ???
        , lastName   = "Doe"
            ...
        }
```

<div class="fragment">
It could be empty.

<pre><code class="haskell">john = Person
        {   ...
        , middleName = ""
            ...
        }
</code></pre>
</div>

<div class="fragment">
<ul>
    <li>"" != Nothing</li>
    <li>0 != Nothing</li>
</ul>
</div>
