# Location Testing from list of Keywords

This is just a quick test of trying to put an `awk` script together to help out another research team. 

Usage (on OS X/Linux):

```
awk -f script.awk [location-file] [input-file]
```

So example command might be in the examples here:

```
awk -f script.awk location.txt sample.txt
```

## Each File

`location.txt` should be a list of locations that you're looking to mark up. Such as:

```
toronto
powell river
on
bc
```

`sample.txt` is a list of data such as:

```
new haven co-op toronto on $1245
joe schmo co-op powell river bc $4444
```

## Results

Results are OK. The big limitation is:

- Needs to be a user-generated list..  
- Only finds first instance. If it is the Slave Lake Community Area, it will only find the first Slave Lake. This is how we get around finding strings like `on` or `bc` in the middle of other strings..  

## Limitations

Requires manual input, which is a bummer for `location.txt`. Also see above. 

## Other things?

Could experiment with [Stanford NER, perhaps following Bill Turkel's script here](http://williamjturkel.net/2013/06/30/named-entity-recognition-with-command-line-tools-in-linux/), but I suspect that'd create too much noise.