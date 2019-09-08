FROM alpine:3.10
LABEL maintainer="Gary Kim <gary@garykim.dev>"
WORKDIR /usr/bin
COPY hugo-src/hugo .
COPY docker-entrypoint.sh /
RUN apk add --no-cache ca-certificates libc6-compat libstdc++ make
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["version"]
