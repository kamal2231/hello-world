FROM nginx:alpine
COPY hello-world.html /usr/share/nginx/html
EXPOSE 4000