# Interesting cases

* 666: want < 161
* 555: 95 doesn't lift
* 444: <47, also generate 48 that is "stable" (doesn't go to 47 easily)

# Experiments

## flip and split

### 444
```
cd 444
../code/flip ../solutions/444-47-mod2.exp 4 10000000000 1 > 444.out 
echo 444; for ((N=46; N<=49; N++)); do echo "$N => `grep "r$N" 444.out | wc -l`"; done
```

### 555
```
cd 555
../code/flip ../solutions/555-95-mod2.exp 5 10000000000 1 > 555.out 
echo 555; for ((N=94; N<=100; N++)); do echo "$N => `grep "r$N" 555.out | wc -l`"; done
```

### 666

```
cd 666
../code/flip ../solutions/666-164-mod2.exp 6 10000000000 1 > 666.out 
echo 666; for ((N=161; N<=169; N++)); do echo "$N => `grep "r$N" 666.out | wc -l`"; done
```

