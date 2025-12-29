# Writeup - Misc 01 (Acrostic)

This is a pattern‑spotting puzzle. The first letters spell the flag text.

## Step 1: Read the Line
```bash
cat poem.txt
```

## Step 2: Extract First Letters
```bash
awk '{for(i=1;i<=NF;i++) printf substr($i,1,1)}' poem.txt; echo
```

You should get: `edumiscacrostic`

## Step 3: Wrap the Flag
Submit:
```
flag{edumiscacrostic}
```

## Recap
- Extract initials
- Build the flag

Nice work — you solved it cleanly.
