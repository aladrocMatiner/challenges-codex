# Writeup - Attachment (ROT13)

Nice! This is a classic beginner cipher.

## Step 1: Open the File
```bash
cat encoded.txt
```

## Step 2: Decode ROT13
```bash
cat encoded.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Recap
1. Read the file
2. Apply ROT13
3. Submit the flag

You’re doing great — keep that momentum.
