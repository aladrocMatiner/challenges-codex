# Helper Scripts

This folder contains small utilities to adjust CRL blueprints and stored events.

## set-cyberrange.sh
**Purpose:** Convert a Jeopardy blueprint into Cyber‑Range mode by adding `ports: []` to each service block that has networks.

**Usage:**
```bash
./set-cyberrange.sh <input_blueprint.yml> <output_blueprint.yml>
```

## set-jeopardy.sh
**Purpose:** Convert a Cyber‑Range blueprint into Jeopardy mode by removing `ports: []` entries.

**Usage:**
```bash
./set-jeopardy.sh <input_blueprint.yml> <output_blueprint.yml>
```

## set-external-url.sh
**Purpose:** Update the `external-url` in a stored event file. If you press Enter, it defaults to `127.0.0.1`.

**Usage:**
```bash
./set-external-url.sh <stored-event.yml>
```
