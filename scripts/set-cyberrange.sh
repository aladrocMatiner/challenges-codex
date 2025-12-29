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
cur_block = []
cur_name = None

# We do a light, line-based transform: if a service block has a networks section,
# add `ports: []` unless already present.

def flush(block, name):
    if not block:
        return []
    has_networks = any(l.strip().startswith('networks:') for l in block)
    has_ports = any(l.strip().startswith('ports:') for l in block)
    if has_networks and not has_ports:
        # insert ports after networks block
        out = []
        i = 0
        while i < len(block):
            out.append(block[i])
            if block[i].strip().startswith('networks:'):
                i += 1
                # copy the networks list items
                while i < len(block) and block[i].startswith('      - '):
                    out.append(block[i])
                    i += 1
                out.append('    ports: []')
                continue
            i += 1
        return out
    return block

for line in lines:
    if line.startswith('  ') and not line.startswith('    ') and ':' in line:
        # new service
        out_lines += flush(cur_block, cur_name)
        cur_block = [line]
        cur_name = line.strip().rstrip(':')
    else:
        cur_block.append(line)

out_lines += flush(cur_block, cur_name)

out.write_text('\n'.join(out_lines) + '\n')
PY

"$in" "$out"
