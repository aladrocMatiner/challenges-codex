# Writeup - Mobile 01 (Basic)

Goal: extract a flag from a simple APK.

## Step 1: Unzip the APK
```bash
unzip app.apk -d app
```

## Step 2: Search for the Flag
```bash
grep -R "flag{" -n app
```

APK files are just ZIP archives. Great first step for mobile analysis.
