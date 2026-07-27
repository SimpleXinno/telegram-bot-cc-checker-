FROM php:8.2-cli

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    git \
 && docker-php-ext-install mysqli

CMD ["php", "index.php"]
