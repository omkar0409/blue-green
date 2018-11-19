FROM httpd:latest
COPY ./static-html/ /usr/local/apache2/htdocs/
