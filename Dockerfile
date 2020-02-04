FROM alpine:3.11
LABEL maintainer="Gary Kim <gary@garykim.dev>"
COPY hugo-src/hugo /usr/bin
COPY docker-entrypoint.sh /
RUN apk add --no-cache ca-certificates libc6-compat libstdc++ make
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["version"]
