FROM alpine:3.11.2

RUN apk add --no-cache \
        oath-toolkit-oathtool=2.6.2-r0

CMD [ "xargs", "oathtool", "--totp=sha1", "--base32" ]
