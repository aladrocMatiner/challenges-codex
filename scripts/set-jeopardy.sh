#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <input_blueprint.yml> <output_blueprint.yml>" >&2
  exit 1
fi

in="$1"
out="$2"

python3 - <<'PY'
import sys
from pathlib import Path

inp = Path(sys.argv[1])
out = Path(sys.argv[2])
lines = inp.read_text().splitlines()

out_lines = []
for line in lines:
    if line.strip().startswith('ports: []'):
        continue
    out_lines.append(line)

out.write_text('\n'.join(out_lines) + '\n')
PY

"$in" "$out"
