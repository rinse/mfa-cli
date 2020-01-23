#!/bin/sh

set -eu

if [ -z "$OTP_SECRET" ]; then
    echo "OTP_SECRET is undefined or empty."
    echo "export OTP_SECRET=XXXXXXXXXXXXXXXX"
    exit 1
fi

echo "$OTP_SECRET" \
    | docker run --rm -i oathtool:2.6.2-alpine
