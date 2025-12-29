# Writeup - Combined (SSH + Web)

Nice! This challenge has two small wins in one. You will collect one flag via SSH and another from a web page.

## Part A: SSH Flag
1. Connect using the info from the platform:

```bash
ssh -p <PORT> root@<HOST>
```

Password:
```
password
```

2. Find the SSH flag:

```bash
cat /flaga.txt
```

## Part B: Web Flag
1. Open the web URL shown in the challenge:

```
http://<HOST>:<PORT>
```

2. Read the page content (or view source). The flag is there.

## Recap
- SSH flag: `cat /flaga.txt`
- Web flag: open the page and read it

Two flags, two quick victories. Keep going!
