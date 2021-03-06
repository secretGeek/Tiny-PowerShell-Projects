# Password

https://xkcd.com/936/

Create a program that will randomly combine words from given text(s) to create novel, memorable, unbreakable passwords.

```powershell
C:\> ./password.ps1
EchinochloaJapeCollinglyRadiotrician
EthanedithiolRefleePrebudgetPolyphonism
BerriChamaecyparisOutdraftArcifera
```

By default, the program should read the standard word dictionary `/usr/share/dict/words` for the word list but should also accept optional positional arguments.
The program should create a list of unique words with all non-word characters removed, randomly select some `-w` or `--num_words` for each password, and join the title case selections into new passwords:

```powershell
C:\> ./password.ps1 -w 3 scarlet/*
ShouldOfferPeculiar
LongDeathWill
LikeVenerableBear
```

The words selected should have a `-m` or `--min_word_len` that defaults to 3 in order to remove short, unmemorable words:

```powershell
C:\> ./password.ps1 -m 5 sonnets/*
IndigestPublishPaintingParticular
AccidentImprintDancePosterity
ExcuseGrossStateLaughd
```

The program should accept a `-n` and `--num` flag to control the number of passwords that are created:

```powershell
C:\> ./password.ps1 -n 2 const/*
NumberFollowExtraordinaryCompel
ThinkLegislationAppellateEligible
```

Be sure to accept a `-s` or `--seed` option to use as the random seed to ensure reproducibility:

```powershell
C:\> ./password.ps1 -s 1
ChromePorometerUnwastableUnconditionated
ThujaAwesomelyEyeglanceCatabolin
OptiveThicketMoratoriaNoncompetent
```

If the `--l33t` flag is present, the passwords should be obfuscated by:

1. Using the "ransom" algorithm from chapter 13
2. Using a character substitution as in chapter 5
3. Add a randomly selected punctuation at the end

Here is the substitution table:

```
a => @
A => 4
o => 0
O => 0
t => +
e => 3
E => 3
I => 1
S => 5
```

Here is what the output would look like without:

```powershell
C:\> ./password.ps1 sonnets/* -s 1
EagerCarcanetLilyDial
WantTempestTwireRondure
HealCrawlVerdictBase
```

And the same passwords with the encoding:

```powershell
C:\> ./password.ps1 sonnets/* -s 1 --l33t
34G3rc4rC4n3TliLydi@L.
5p0r+1V3B@sT@RDhURT5uFf3Rd\
rh3T0r1cC0n+3ndsU1T3Dw1l+`
```