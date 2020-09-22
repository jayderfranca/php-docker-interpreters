ARG PHP_5_TAG_BASE
FROM php:${PHP_5_TAG_BASE}

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install xdebug-2.5.5 \
 && docker-php-ext-enable xdebug \
 && apk del pcre-dev ${PHPIZE_DEPS}
