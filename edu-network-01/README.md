# Writeup - Network 01 (Medium)

Goal: extract the flag from a small packet capture.

## Quick Method (strings)
```bash
strings capture.pcap | grep flag
```

## Alternative (tshark)
If you have tshark:
```bash
tshark -r capture.pcap -T fields -e data | xxd -r -p | strings | grep flag
```

PCAPs often hide data inside payloads. This is a fast first pass.
