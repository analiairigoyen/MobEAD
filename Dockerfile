FROM nginx:alpine
copy . /usr/share/nginx/html/
COPY Web.config /etc/nginx/conf.d/Web.config
COPY index.html /usr/share/nginx/html/index.html