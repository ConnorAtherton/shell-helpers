# tr

#### Example: Convert to lowercase

Whenever we perform an operation with a straight transformation
- like going from uppercase to lowercase letters - we can always
switch it around and perform it the opposite way.

With that slender sliver of knowledge we have twice the amount of
power just by switching the order of the arguments.

```shell
echo "TEST" | tr [:upper:] [:lower:]
=> "test"

echo "TEST" | tr 'A-Z' 'a-z'
=> "test"
```


