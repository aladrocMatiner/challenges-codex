# Writeup - Web 02 (Cookies)

Great job getting here. This challenge teaches a common web trick: reading cookies.

## Goal
Find the flag stored in a cookie.

## Steps (Browser)
1. Open the URL.
2. Open Developer Tools (F12).
3. Go to **Application** → **Cookies** (Chrome) or **Storage** → **Cookies** (Firefox).
4. Look for a cookie named `ctf_flag`.

## Steps (Terminal)
You can also use curl:

```bash
curl -i http://<HOST>:<PORT>
```

Look for a line like:
```
Set-Cookie: ctf_flag=flag{...}
```

## Recap
- Open the page
- Inspect cookies
- Copy the flag

Cookies are everywhere in web security. Nice work.
