# Writeup - Forensics 01 (Log + Base64)

You’re doing great. This is log triage plus a simple decode.

## Step 1: Search the Log
```bash
cat system.log
```

Look for a suspicious value like `payload=...`.

## Step 2: Decode Base64
```bash
python3 - <<'PY'
import base64
line = [l for l in open('system.log') if 'payload=' in l][0]
encoded = line.split('payload=')[1].strip()
print(base64.b64decode(encoded).decode())
PY
```

## Recap
- Find the payload in the log
- Decode base64
- Submit the flag

Great work — this is real forensic workflow.
