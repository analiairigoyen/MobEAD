FROM nginx:alpine
COPY Web.config /etc/nginx/conf.d/Web.config
COPY index.html /usr/share/nginx/html/index.html