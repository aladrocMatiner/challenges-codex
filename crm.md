# CRL Event Guide (Codex Challenges)

This guide shows how to generate a CRL event using the Codex challenge pack in **Jeopardy** or **Cyber‑Range** mode.

## Prerequisites
- Docker running
- Swarm initialized (`docker swarm init`)
- Logged in to a Docker registry (`docker login` so `~/.docker/config.json` exists)
- The main repo available: `bv21-deployment-cyber-range`

## Jeopardy Mode (ports visible in CTFd)

In Jeopardy mode, services publish ports and CTFd shows the connection info.

```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range/crl
CRL_IMAGE=crl ./crlcli create --event stored-events/generated/codex-edu.yml codexedu admin
CRL_IMAGE=crl ./crlcli start codexedu admin
```

CTFd URL will be printed in the output. Login with `admin` / `password123`.

## Cyber‑Range Mode (no connection info)

In Cyber‑Range mode, ports are **not** published. Players connect via VPN (Wireguard) and discover services internally.

1) Create a cyber‑range blueprint from the Jeopardy blueprint:

```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range
./crl/challenges-codex/scripts/set-cyberrange.sh crl/blueprints/generated/codex-edu.yml \
  crl/blueprints/generated/codex-edu-cyber.yml
```

2) Create a matching stored event file (copy and edit):

```bash
cp crl/stored-events/generated/codex-edu.yml crl/stored-events/generated/codex-edu-cyber.yml
sed -i 's|codex-edu.yml|codex-edu-cyber.yml|' crl/stored-events/generated/codex-edu-cyber.yml
```

3) Create and start the event:

```bash
cd /home/aladroc/src-local/__aladrocMatiner/bv21-deployment-cyber-range/crl
CRL_IMAGE=crl ./crlcli create --event stored-events/generated/codex-edu-cyber.yml codexedu admin
CRL_IMAGE=crl ./crlcli start codexedu admin
```

CTFd will still be public, but **connection-info will be hidden**.

---

## Notes
- Use Jeopardy mode for classic CTFs.
- Use Cyber‑Range mode when you want VPN‑only access and exploration.
