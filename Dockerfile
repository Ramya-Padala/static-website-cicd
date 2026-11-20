FROM httpd:latest
COPY index.html /usr/share/apache/html/index.html
EXPOSE 80
