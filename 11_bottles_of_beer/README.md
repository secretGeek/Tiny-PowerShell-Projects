# 99 Bottles of Beer

Write a song that will generate the verses to the song "99 Bottles of Beer":

```
C:\> ./bottles.ps1 | Select-Object -Last 2

2 bottles of beer on the wall,
2 bottles of beer,
Take one down, pass it around,
1 bottle of beer on the wall!

1 bottle of beer on the wall,
1 bottle of beer,
Take one down, pass it around,
No more bottles of beer on the wall!
```

If given a `-n` or `--num` argument, generate the verses from that number down to 0:

```
C:\> ./bottles.ps1 -n 2
2 bottles of beer on the wall,
2 bottles of beer,
Take one down, pass it around,
1 bottle of beer on the wall!

1 bottle of beer on the wall,
1 bottle of beer,
Take one down, pass it around,
No more bottles of beer on the wall!
```
