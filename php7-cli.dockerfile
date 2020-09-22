ARG PHP_7_BASE_IMAGE
FROM php:${PHP_7_BASE_IMAGE}

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install xdebug-2.9.6 \
 && docker-php-ext-enable xdebug \
 && apk del pcre-dev ${PHPIZE_DEPS}
