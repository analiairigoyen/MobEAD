FROM nginx:alpine
COPY Web.conf /etc/nginx/conf.d/Web.conf
COPY index.html /usr/share/nginx/html/index.html