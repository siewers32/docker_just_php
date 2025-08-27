FROM php:8.2-cli
COPY /html /html
WORKDIR /
CMD [ "php", "./test.php" ]
