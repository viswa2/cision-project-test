FROM nginx:1.19-alpine

# Ensure directories are writable by the nginx user
USER root

# Fix /var/cache/nginx and /var/run permissions
RUN mkdir -p /var/cache/nginx /var/run \
    && chown -R nginx:nginx /var/cache/nginx /var/run

# Default nginx user from base image
USER nginx   

# Let it fall back to default USER nginx set by base image
EXPOSE 8080

# Reuse the entrypoint, but pass custom CMD properly
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]

