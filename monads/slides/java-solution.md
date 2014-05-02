
### The Solution

```java
public static String getHomeLine2(Person obj) {
    Address a = obj.homeAddress;
    if (a != null) return a.line2;
    else return null;
}
```

```java
Person person = ...;
String line2 = getHomeLine2(person);
```

* One new method for each field.
* All fields are subject to null values.
