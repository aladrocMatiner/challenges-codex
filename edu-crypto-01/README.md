# Writeup - Crypto 01 (Caesar)

You’re doing great. Caesar ciphers shift letters by a fixed number.

## Goal
Decode the message in `cipher.txt`.

## Quick Decode (Python)
```bash
python3 - <<'PY'
text = open('cipher.txt','r').read().strip()
shift = 3
out = ''
for c in text:
    if 'a' <= c <= 'z':
        out += chr(((ord(c)-97-shift)%26)+97)
    elif 'A' <= c <= 'Z':
        out += chr(((ord(c)-65-shift)%26)+65)
    else:
        out += c
print(out)
PY
```

## Recap
- Shift letters back by 3
- Submit the flag

Nice job — you just broke a classic cipher.
