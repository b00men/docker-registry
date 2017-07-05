#!/bin/sh

set -e

openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key -x509 -days $REGISTRY_CERT_DAYS -out certs/domain.crt -subj $REGISTRY_CERT_SUBJ

htpasswd -Bbn $REGISTRY_CREDS > /auth/htpasswd

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"