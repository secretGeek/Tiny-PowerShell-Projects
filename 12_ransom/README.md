# Ransom

Write a program that will randomly capitalize the letters in a given piece of text a la a ransom note.
The text may be provided on the command line:

```
C:\> ./ransom.ps1 'The quick brown fox jumps over the lazy dog.'
THe qUICk BrOWn fOX jumPS OVEr THE LAzy DOg.
```

Or with a file:

```
C:\> ./ransom.ps1 ../inputs/fox.txt
THE QUicK BRown fox JuMPS OVER THe laZY dog.
```

The program should accept a `-s` or `--seed` option to use as a random seed to ensure reproducibility:

```
C:\> ./ransom.ps1 -s 1 ../inputs/fox.txt
thE QUICk BrOWn Fox jumpS OveR tHe LAzY dOg.
```