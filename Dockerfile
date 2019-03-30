FROM php:7.3-apache

RUN (curl -sL https://deb.nodesource.com/setup_10.x | bash) && \
  apt-get update && \
  apt-get install -y git nodejs libicu-dev libpng-dev && \
  a2enmod rewrite && \
  docker-php-ext-install gd pdo_mysql intl bcmath zip && \
  service apache2 restart && \
  (curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer) && \
  npm i -g yarn

