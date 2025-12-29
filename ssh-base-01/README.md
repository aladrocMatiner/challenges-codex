# Writeup - Weak SSH (Beginner Friendly)

Welcome! You’ve got this. This is a super friendly, step-by-step guide meant for people who are just getting started. We’ll move slowly, explain what’s happening, and celebrate small wins along the way.

## Goal
Log in via SSH and find the flag.

## What You Need
- A terminal
- The connection info from the platform (host + port)

## Step 1: Connect with SSH
You’ll use the SSH command shown in the challenge info. It looks like this:

```bash
ssh -p <PORT> root@<HOST>
```

When prompted for the password, use:

```
password
```

If you see a message about the host key, type `yes` and press Enter. That’s normal the first time you connect.

## Step 2: Find the Flag
Once you’re inside, list the files and look for something flag-shaped.

```bash
ls -la
```

A common place is the root directory:

```bash
cat /flag.txt
```

If you see something like `flag{...}`, you did it!

## Tips
- Don’t panic if it feels new. Everyone starts here.
- If you get “Permission denied”, double-check the username (`root`) and password (`password`).

## Quick Recap
1. SSH in
2. Read `/flag.txt`
3. Submit the flag

You’re building real skills. Keep going, you’re doing great.
