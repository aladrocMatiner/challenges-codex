# Writeup - Blockchain 01 (Basic)

Goal: decode the memo field from a mock transaction.

## Step 1: Find the Memo
```bash
cat block.json
```

## Step 2: Decode Hex
```bash
python3 - <<'PY'
import re
text = open('block.json').read()
hexdata = re.search(r'"memo":\s*"([0-9a-f]+)"', text).group(1)
print(bytes.fromhex(hexdata).decode())
PY
```

That decoded text is the flag.
