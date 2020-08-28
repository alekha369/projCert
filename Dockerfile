FROM php:7.2-apache
COPY website /var/www/html
EXPOSE 8050
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
