# awk

It's own language with it's own grammar.

## Syntax

#### Example 1: Convert to lowercase

```shell
echo "TEST" | awk '{ print tolower($0) }'
=> 'test'

echo "test" | awk '{ print toupper($0) }'
=> 'TEST'
```
