# Writeup - OSINT 01 (Profiles Dump)

OSINT often starts with a simple data dump. Your job is to find the right clue.

## Step 1: Search for the Handle
```bash
grep -n "civic-ghost" profiles.txt
```

You will see a base64 string.

## Step 2: Decode Base64
```bash
python3 - <<'PY'
import base64
line = [l for l in open('profiles.txt') if 'civic-ghost' in l][-1]
encoded = line.split('drop:')[1].strip()
print(base64.b64decode(encoded).decode())
PY
```

## Recap
- Find the correct profile
- Decode the drop
- Submit the flag

Great job — this is a classic OSINT workflow.
