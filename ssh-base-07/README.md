# Writeup - Attachment (Hex)

You’re close. This one is a simple hex decode.

## Step 1: View the File
```bash
cat encoded.txt
```

## Step 2: Decode Hex
Using Python:

```bash
python3 - <<'PY'
hexdata = open('encoded.txt','r').read().strip()
print(bytes.fromhex(hexdata).decode())
PY
```

## Recap
1. Read the hex
2. Convert to text
3. Submit the flag

Great progress — decoding formats is a core CTF skill.
