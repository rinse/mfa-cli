# What is it

It is a client for mfa. It can be an insurance for losting your phone etc.

# How to use it
1. Put your QR-Code in `./images/` folder.
2. Get your secret key with:
    * `docker-compose run --rm mfa-cli zbarimg your-qr.png`
3. Get your one-time password with:
    * `docker-compose run --rm mfa-cli oathtool --totp=sha1 --base32 XXXXXXXXXX`
4. Don't forget to remove `your-qr.png` after getting your secret key.
    * `rm ./images/your-qr.png`
    * also, prevent your secret key from being known to others.
