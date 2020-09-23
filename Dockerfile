FROM caddy:2.1.1-alpine

RUN useradd -ms /bin/bash pengg
USER pengg
WORKDIR /home/pengg
