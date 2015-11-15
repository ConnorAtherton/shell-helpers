# sed

A powerful stream editor. Useful for modifying or examining
text in lots of different contexts. See examples below.

Sed will, by default, only change the first occurence of the pattern
on a line. You can configure this behaviour by adding a `g` flag after
the second delimiter. That will now change all occurenes of the pattern on
a line.

## Flags

'q' - match globally

## Returning a substitution from a string

Add match groups to the substitution part and
reference them after the second delimiter.

#### Example 1: strip whitespace from a string

```shell
echo "  test  " | sed "s/ //g"
=> "test"
```

But that won't strip all whitespace characters like tabs.

NOTE: MAC
To type a special character to the terminal you need to tupe ^V
followed by the chaaracter. In this instance it's a tab characters but
it could be any other special characters like () (MORE RESEARCH)

NOTE: LINUX
(Same??)

```shell
echo "    test    " | sed -e 's/[[:blank:]]//g'
```

#### Example 2: string first and last characters

```shell
echo "[test]" | s/\[\([a-z]*\)\]/\1/
=> "test"
```

#### Example 2: prints certain line ranges

We are using the n flag here to echo the lines to stdout
after we read them.

```shell
sed -n '2p' < file.txt
```

We can even work on lines ranges using the same technique. Here we are
reading in each line starting from the second up to, and including, the 10th.

```shell
sed -n '2,10p' < file.txt
```

#### Example 3: Inserting data into files at specified locations

(MORE RESEARCH ON THE NAME OF THE STRING)

We will be using this file for the examples in this section.

```shell
cat file.txt
1) Line 1
2) Line 1

a) Line 1
b) Line 1
```

Insert before a line using the `i` flag

```shell
sed < file.txt "1i \\
# Append to front
"
```

Insert after a line using the `a` flag

```shell
sed < file.txt "1a \\
# Append to front
"
```
