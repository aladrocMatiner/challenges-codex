# Writeup - Multi-Service (Beginner Friendly)

You’ll connect to the frontend, discover a password, and then use it to access the backend. Step by step.

## Step 1: SSH into the Frontend

```bash
ssh -p <PORT> root@<HOST>
```

Password:
```
password
```

## Step 2: Grab the Backend Password

```bash
printenv | grep BACKENDPASS
```

## Step 3: Connect to the Backend

```bash
ssh root@backend
```

Use the password you found.

## Step 4: Read the Flag

```bash
cat /flag.txt
```

## Recap
- Frontend → find password
- Backend → read flag

You’re learning how services can connect internally. Nice work!
