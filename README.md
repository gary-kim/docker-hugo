# Docker Hugo
[![Build Status](https://ghdrone.garykim.dev/api/badges/gary-kim/docker-hugo/status.svg)](https://ghdrone.garykim.dev/gary-kim/docker-hugo)

Resources used to build Docker image available at <https://hub.docker.com/r/garykim/hugo>.

Hugo Source Code: <https://github.com/gohugoio/hugo>.

Free to use under the Apache-2.0 license.

Tags with the `-extended` suffix are Hugo extended builds with SASS/SCSS support, `git`, `make`, `curl`, `bash` and all markup format dependencies installed.
Use the `-extended` images if you need any of these installed.

Example use:
```
Hugo Static Site Generator v0.68.3-157669A0/extended linux/amd64 BuildDate: 2020-04-01T00:21:19Z
```

#### Changes

**v0.68.3 Onwards:** Add `bash`, `curl` to extended image.  
**v0.67.1 Onwards:** Add `pandoc`, `rst2html`, `asciidoc`, `asciidoctor` to extended image. These are external helpers used by Hugo for some content formats.
**v0.70.0 Onwards:** Add Babel dependencies.
