FROM php:7-apache

LABEL maintainer "borahuho"

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY src /var/www/html
RUN chown -R www-data:www-data -R /var/www/html

CMD ["start-apache"]
