# Writeup - Attachment (Base64)

You’ve got this. This is a gentle decode task.

## Goal
Decode the attached message and find the flag.

## Step 1: Open the File
```bash
cat encoded.txt
```

## Step 2: Decode Base64
If you have the `base64` tool:

```bash
base64 -d encoded.txt
```

If not, use Python:

```bash
python3 - <<'PY'
import base64
print(base64.b64decode(open('encoded.txt','rb').read()).decode())
PY
```

## Recap
1. Open the file
2. Decode base64
3. Submit the flag

Nice work — small steps build real skills.
