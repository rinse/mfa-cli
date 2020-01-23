#!/bin/sh

if [ -z "$OTP_SECRET" ]; then
    echo "OTP_SECRET is undefined or empty."
    echo "export OTP_SECRET=XXXXXXXXXXXXXXXX"
    exit 1
fi

docker run --rm mfa-cli:0.1 oathtool --totp=sha1 --base32 $OTP_SECRET
