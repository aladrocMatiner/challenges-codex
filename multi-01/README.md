# Writeup - Multi-Service (Beginner Friendly)

You’re about to do a small “pivot” challenge. That’s awesome. We’ll connect to the frontend first, then hop to the backend.

## Goal
Reach the backend service and read the flag.

## Step 1: SSH into the Frontend
Use the connection info from the platform:

```bash
ssh -p <PORT> root@<HOST>
```

Password:
```
password
```

## Step 2: Find the Backend Password
The frontend has the backend password in an environment variable. Try:

```bash
printenv | grep BACKENDPASS
```

Copy that value.

## Step 3: Connect to the Backend
From the frontend, connect to the backend service:

```bash
ssh root@backend
```

When asked for the password, paste the value you just found.

## Step 4: Read the Flag
Once on the backend:

```bash
cat /flag.txt
```

## Recap
1. SSH to frontend
2. Find `BACKENDPASS`
3. SSH to `backend`
4. Read `/flag.txt`

Nice work. This is real-world skill building.
