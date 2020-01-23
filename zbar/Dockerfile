FROM alpine:3.11.2

WORKDIR /images

RUN apk add --no-cache \
        imagemagick=7.0.9.7-r0 \
        zbar=0.23-r2

CMD [ "zbarimg", "qr.png" ]
