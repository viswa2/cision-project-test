FROM nginx:1.19-alpine 

USER nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
