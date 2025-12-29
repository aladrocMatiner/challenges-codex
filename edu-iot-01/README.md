# Writeup - IoT 01 (Medium)

Goal: extract a flag from a firmware image.

## Step 1: Search Strings
```bash
strings firmware.bin | grep flag
```

Firmware often leaks configuration data in plain text. This is a common first check.
