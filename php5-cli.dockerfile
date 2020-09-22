ARG PHP_5_TAG_BASE
FROM php:${PHP_5_TAG_BASE}

ARG PHP_5_XDEBUG_VER

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install "xdebug-${PHP_5_XDEBUG_VER}" \
 && docker-php-ext-enable xdebug \
 && apk del pcre-dev ${PHPIZE_DEPS}
