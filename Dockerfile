FROM caddy:2-alpine
COPY index.html /srv/
COPY img /srv/img
CMD caddy file-server --root /srv --listen :${PORT:-8080}
