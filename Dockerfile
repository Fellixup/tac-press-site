FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html galereya.html /srv/
COPY img /srv/img
COPY video /srv/video
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
