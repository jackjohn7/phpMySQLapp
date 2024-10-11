FROM php:8.1-apache
RUN docker-php-ext-install mysqli
COPY . /var/www/html/
COPY ./apache.conf /etc/apache2/conf-available/
RUN a2enmod rewrite
EXPOSE 80
