# Writeup - Crypto 02 (Single-Byte XOR)

This is a friendly intro to XOR. The ciphertext is hex, and the key is a single byte.

## Step 1: Read the Hex
```bash
cat cipher.hex
```

## Step 2: Try Keys (Python)
We can brute-force a single byte key and look for `flag{`.

```bash
python3 - <<'PY'
import binascii
hexdata = open('cipher.hex','r').read().strip()
ct = binascii.unhexlify(hexdata)
for k in range(256):
    pt = bytes([b ^ k for b in ct])
    if b'flag{' in pt:
        print('key=', k)
        print(pt.decode())
        break
PY
```

## Recap
- Decode hex
- XOR with single-byte key
- Find the flag

Nice — you just did a classic crypto technique.
