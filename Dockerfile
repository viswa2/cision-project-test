FROM nginx:1.19-alpine 

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
