FROM nginx:1.19-alpine

# Ensure directories are writable by the nginx user
USER root

# Fix /var/cache/nginx and /var/run permissions
RUN mkdir -p /var/cache/nginx /var/run /tmp \
    && chown -R nginx:nginx /var/cache/nginx /var/run /tmp

# Use our custom nginx.conf that doesn't write to protected paths
COPY nginx.conf /etc/nginx/nginx.conf

# Default nginx user from base image
USER nginx   

# Let it fall back to default USER nginx set by base image
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
