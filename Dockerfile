FROM nginx:1.19-alpine

# Temporarily switch to root for the fix
USER root

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx

# Let it fall back to default USER nginx set by base image
EXPOSE 8080

# Tell nginx to write pid to /tmp to avoid /var/run permission error
CMD ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]

