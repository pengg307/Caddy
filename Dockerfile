FROM caddy:2.0.0-builder AS builder

RUN caddy-builder \
    github.com/caddyserver/nginx-adapter \
    github.com/hairyhenderson/caddy-teapot-module@v0.0.1

FROM caddy:2.0.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

COPY Caddyfile /etc/caddy/Caddyfile
COPY site /site

USER root
