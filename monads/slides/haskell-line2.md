
How would you get the second line of a home address?

<pre class="fragment"><code class="haskell">person = Person { ... }

l2 = line2 (homeAddress person)

-- homeAddress :: Person  -> Address
-- line2       :: Address -> Maybe String
</code></pre>

<div class="fragment">
    This time it is not possible for `homeAddress` to be null.    

    <img src="/img/are-you-sure.jpg" width="400" height="400"/>
</div>
