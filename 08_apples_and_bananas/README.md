# Apples and Bananas

Write a program that will substitute all the vowels in a given text with a single vowel (default "a"):

```
C:\> .\apples.ps1 'The quick brown fox jumps over the lazy dog.'
Tha qaack brawn fax jamps avar tha lazy dag.
```

The `-v` or `--vowel` can be use to specify another vowel:

```
C:\> .\apples.ps1 'The quick brown fox jumps over the lazy dog.' -v i
Thi qiick briwn fix jimps ivir thi lizy dig.
```

The program should reject a `--vowel` that is not a vowel (a, e, i, o, u):

```
C:\> .\apples.ps1 'The quick brown fox jumps over the lazy dog.' -v x
usage: apples.py [-h] [-v str] str
apples.py: error: argument -v/--vowel: \
invalid choice: 'x' (choose from 'a', 'e', 'i', 'o', 'u')
```

The argument may name a file in which case you should read the contents of that file:

```
C:\> .\apples.ps1 ../inputs/fox.txt --vowel u
Thu quuck bruwn fux jumps uvur thu luzy dug.
```
