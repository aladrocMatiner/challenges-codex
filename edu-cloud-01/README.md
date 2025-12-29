# Writeup - Cloud 01 (Medium)

Goal: decode a Kubernetes secret.

## Step 1: Read the File
```bash
cat k8s-secret.yaml
```

## Step 2: Decode Base64
```bash
python3 - <<'PY'
import base64
import re
text = open('k8s-secret.yaml').read()
val = re.search(r'api-key:\s*(\S+)', text).group(1)
print(base64.b64decode(val).decode())
PY
```

Kubernetes secrets are base64-encoded by default.
