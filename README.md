# challenges-codex

A curated, beginner‑friendly set of CRL challenges organized by category. Each challenge includes a clear write‑up and step‑by‑step solution guidance.

## Categories

### Web
- `edu-web-01`: View‑source basics (flag hidden in HTML).
- `edu-web-02`: Cookie inspection (flag set as a cookie).

### Crypto
- `edu-crypto-01`: Caesar cipher decode.
- `edu-crypto-02`: Single‑byte XOR decode.

### Forensics
- `edu-forensics-01`: Log triage + base64 decode.
- `edu-forensics-02`: Extract strings from an image.

### Reverse Engineering
- `edu-reverse-01`: Use `strings` to recover a flag from a binary.

### Pwn
- `edu-pwn-01`: Classic buffer overflow to call `win()`.

### OSINT
- `edu-osint-01`: Find a clue in a profile dump and decode it.

### Misc
- `edu-misc-01`: Acrostic puzzle (first letters form the flag text).

## How This Repo Is Used
These challenges are consumed by the main deployment repo:

- Main repo: `bv21-deployment-cyber-range`
- Blueprint: `crl/blueprints/generated/codex-edu.yml`
- Stored event: `crl/stored-events/generated/codex-edu.yml`

The main repo spins up CTFd and publishes these challenges into an event.

## Credits
Thanks to KAUOTIC for the Cyber Range Lite ecosystem and inspiration.
