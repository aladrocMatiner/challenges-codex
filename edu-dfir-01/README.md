# Writeup - DFIR 01 (Medium)

Goal: find the attacker IP that appears most often in the log.

## Step 1: Count IPs
```bash
grep -oE "([0-9]+\.){3}[0-9]+" auth.log | sort | uniq -c | sort -nr
```

The most frequent IP is **203.0.113.50**.

## Step 2: Build the Flag
```
flag{203.0.113.50}
```

This is a common DFIR task: identify top offender IPs quickly.
