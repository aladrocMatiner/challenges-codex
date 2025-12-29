# Writeup - Multi-Service (Beginner Friendly)

This one teaches a simple “pivot”: connect to one machine, then hop to another. You can do it.

## Step 1: SSH into the Frontend

```bash
ssh -p <PORT> root@<HOST>
```

Password:
```
password
```

## Step 2: Find the Backend Password
The frontend has the backend password in an environment variable:

```bash
printenv | grep BACKENDPASS
```

Copy the value.

## Step 3: SSH into the Backend

```bash
ssh root@backend
```

Use the password you just found.

## Step 4: Read the Flag

```bash
cat /flag.txt
```

## Recap
1. SSH to frontend
2. Get `BACKENDPASS`
3. SSH to backend
4. Read `/flag.txt`

Great job — this is real-world style movement between services.
