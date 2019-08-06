FROM ubuntu:18.04 AS downloader
WORKDIR /save
RUN apt-get update && apt-get install -y curl unzip tar\
    && curl --output hugo.tar.gz -L 'https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_extended_0.56.3_Linux-64bit.tar.gz'\
    && tar -xzf hugo.tar.gz

FROM alpine:3.10
LABEL maintainer="Gary Kim <gary@garykim.dev>"
WORKDIR /usr/bin
COPY --from=downloader /save/hugo .
RUN apk add --no-cache ca-certificates libc6-compat libstdc++

