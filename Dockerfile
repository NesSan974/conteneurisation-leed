FROM php:apache AS base

RUN apt-get update && apt-get install -y \
    git \
    libpng-dev \
    libjpeg-dev \
    libzip-dev \
    && docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql gd zip mysqli xdebug  \
    && docker-php-ext-enable mysqli

WORKDIR /var/www/html

RUN git clone https://github.com/LeedRSS/Leed.git /var/www/html

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html


FROM base AS production

FROM base AS development 
    RUN apt install -y nano vim 
    RUN pecl install xdebug && docker-php-ext-enable xdebug