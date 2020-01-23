FROM alpine:3.11.2

WORKDIR /images

RUN  apk add --no-cache \
    imagemagick \
    oath-toolkit-oathtool \
    zbar

CMD [ "zbarimg", "qr.png" ]
