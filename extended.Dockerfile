FROM alpine:3.11
LABEL maintainer="Gary Kim <gary@garykim.dev>"

ARG pandoc_version=2.9.2

COPY hugo-src/hugo /usr/bin
COPY docker-entrypoint.sh /
RUN apk add --no-cache ca-certificates libc6-compat libstdc++ make git asciidoctor asciidoc py3-docutils

# Install Pandoc
RUN cd /tmp && \
    wget -O - https://github.com/jgm/pandoc/releases/download/${pandoc_version}/pandoc-${pandoc_version}-linux-amd64.tar.gz | tar -xz && \
    mv pandoc-${pandoc_version}/bin/* /usr/bin/ && \
    rm -r /tmp/pandoc-${pandoc_version}

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["version"]
