#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <stored-event.yml>" >&2
  exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file" >&2
  exit 1
fi

echo "Enter public IP/FQDN (or leave blank to use 127.0.0.1):"
read -r input

if [ -z "$input" ]; then
  input="127.0.0.1"
fi

python3 - <<'PY' "$file" "$input"
import sys
from pathlib import Path

path = Path(sys.argv[1])
value = sys.argv[2]
lines = path.read_text().splitlines()

out = []
updated = False
for line in lines:
    if line.strip().startswith('external-url:'):
        out.append(f'external-url: "{value}"')
        updated = True
    else:
        out.append(line)

if not updated:
    out.insert(0, f'external-url: "{value}"')

path.write_text("\n".join(out) + "\n")
PY

printf "Updated %s -> external-url: %s\n" "$file" "$input"
