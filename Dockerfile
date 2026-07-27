FROM php:8.2-cli

WORKDIR /app

COPY . .

RUN php -v

CMD ["php", "index.php"]
