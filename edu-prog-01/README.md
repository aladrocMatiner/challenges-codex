# Writeup - Programming 01 (Basic)

Goal: sum the numbers divisible by 3 in the input file.

## Step 1: Read the Numbers
```bash
cat input.txt
```

## Step 2: Compute the Sum
```bash
python3 - <<'PY'
nums = list(map(int, open('input.txt').read().split()))
print(sum(n for n in nums if n % 3 == 0))
PY
```

The sum is **63**, so the flag is:
```
flag{sum-63}
```
