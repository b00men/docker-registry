# DEPRECATED and will be removed in soon

**For docker stack much better use a bundle:**
- native_registry
- traefik (letsencrypt+base_authentication)

# docker-registry
Self signed docker registry with hardcoded credentials

To configure use:

- `REGISTRY_CREDS="registry_user registry_pass"`
- `REGISTRY_CERT_SUBJ="/C=AU/ST=Some-State/O=OpenSource/CN=Registry/emailAddress=registry@example.com"`
- `REGISTRY_CERT_DAYS=1825`
