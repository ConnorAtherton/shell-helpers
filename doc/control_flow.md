# Control Flow

Most programming languages like ruby and
JavaScript have control flow and shell
scripting is no different.

- different statements
- different switches

```shell
if [ condition ] && [ condition ] ; then
  # code..
  :
fi

if [ condition ] || [ condition ] ; then
  # code..
  :
fi

if [ condition -o  condition ] ; then
  # code..
  :
fi
```

```shell
while true; do
  # code
  :
done

until true; do
  # code
  :
done
```

Note that the ``[[ condition ]]`` is just using an alias for
the `test` operator. You can pictures that like an assertion library
that many other high-level languages have build into the language
core. Here we can see that they behave the same

## `[ condition]`, `[[ condition ]]`, or `test`

```shell
[ true ] && echo "true"
=> "true"

[[ true ]] && echo "true"
=> "true"

test true && echo "true"
=> "true"
```

## Ternarys

Avoid conditions that require excessive parens in favor
of the more terse - and in my opinion more readable - shell
expansions.

```shell
variable=$(( 1 == 1 ? 1 : 0 ))
${variable:="default"}
```
