FROM nginx:1.19-alpine

# Temporarily switch to root for the fix
USER root

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx

# Override pid path
ENV NGINX_PID_PATH=/tmp/nginx.pid    

# Let it fall back to default USER nginx set by base image
EXPOSE 8080

# Reuse the entrypoint, but pass custom CMD properly
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]

