# Helper Scripts

This folder contains small utilities to adjust CRL blueprints and stored events. The goal is to make switching between Jeopardy and Cyber‑Range modes fast and repeatable.

---

## set-cyberrange.sh
**Purpose:** Convert a Jeopardy blueprint into Cyber‑Range mode by adding `ports: []` to each service block that has networks. This hides `connection-info` in CTFd and keeps services internal (VPN access only).

**Usage:**
```bash
./set-cyberrange.sh <input_blueprint.yml> <output_blueprint.yml>
```

**Example:**
```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range
./crl/challenges-codex/scripts/set-cyberrange.sh \
  crl/blueprints/generated/codex-edu.yml \
  crl/blueprints/generated/codex-edu-cyber.yml
```

---

## set-jeopardy.sh
**Purpose:** Convert a Cyber‑Range blueprint back to Jeopardy mode by removing `ports: []`. This makes services publish ports and shows `connection-info` in CTFd.

**Usage:**
```bash
./set-jeopardy.sh <input_blueprint.yml> <output_blueprint.yml>
```

**Example:**
```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range
./crl/challenges-codex/scripts/set-jeopardy.sh \
  crl/blueprints/generated/codex-edu-cyber.yml \
  crl/blueprints/generated/codex-edu.yml
```

---

## set-external-url.sh
**Purpose:** Update the `external-url` field in a stored event file. If you press Enter, it defaults to `127.0.0.1` (useful for local testing).

**Usage:**
```bash
./set-external-url.sh <stored-event.yml>
```

**Example (set public FQDN):**
```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range
./crl/challenges-codex/scripts/set-external-url.sh \
  crl/stored-events/generated/codex-edu.yml
# enter: ctf.example.org
```

**Example (set localhost):**
```bash
./crl/challenges-codex/scripts/set-external-url.sh \
  crl/stored-events/generated/codex-edu.yml
# just press Enter
```

---

## Typical Workflow Examples

### Jeopardy Event (public ports)
```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range/crl
CRL_IMAGE=crl ./crlcli create --event stored-events/generated/codex-edu.yml codexedu admin
CRL_IMAGE=crl ./crlcli start codexedu admin
```

### Cyber‑Range Event (VPN‑only services)
```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range
./crl/challenges-codex/scripts/set-cyberrange.sh \
  crl/blueprints/generated/codex-edu.yml \
  crl/blueprints/generated/codex-edu-cyber.yml

cp crl/stored-events/generated/codex-edu.yml \
  crl/stored-events/generated/codex-edu-cyber.yml
sed -i 's|codex-edu.yml|codex-edu-cyber.yml|' \
  crl/stored-events/generated/codex-edu-cyber.yml

cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range/crl
CRL_IMAGE=crl ./crlcli create --event stored-events/generated/codex-edu-cyber.yml codexedu admin
CRL_IMAGE=crl ./crlcli start codexedu admin
```
