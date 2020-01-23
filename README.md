# What is it

It is a client for mfa. It can be an insurance for losting your phone etc.

# How to use it

1. Build the project.
    * `$ docker-compose build`

1. Get your secret key with:
    1. Put your QR-Code in `./images/` folder.
    1. `$ docker-compose run --rm zbar zbarimg your-qr.png`
        * You keep the secret key which follows `secret=` as `secret=XXXXXXXXXXXXXXX`.

1. Don't forget to remove `your-qr.png` after getting your secret key.
    * `$ rm ./images/your-qr.png`
    * Also, prevent your secret key from being known to others.

1. Get your one-time password.
    * `$ docker-compose run --rm oathtool oathtool --totp=sha1 --base32 XXXXXXXXXX`

## For convenient use

1. Place [otp.sh](otp.sh) to `$HOME/.local/bin` or somewhere.

2. Set an environment variable which tells your secret key.
    * `$ export OTP_SECRET=XXXXXXXXXXXX`

3. Run `$ otp.sh` and it prints your one-time password.
