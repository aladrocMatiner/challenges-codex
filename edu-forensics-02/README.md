# Writeup - Forensics 02 (Image Strings)

Nice! This teaches a quick triage trick: searching for hidden strings in files.

## Step 1: Check Strings
```bash
strings evidence.png | grep flag
```

## Alternative: Use `grep`
```bash
grep -a "flag{" -n evidence.png
```

## Recap
- Scan file for embedded strings
- Extract the flag

Small trick, big impact. Well done.
