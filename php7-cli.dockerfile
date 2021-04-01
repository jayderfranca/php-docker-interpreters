ARG PHP_7_TAG_BASE
FROM php:${PHP_7_TAG_BASE}

ARG PHP_7_XDEBUG_VER

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install "xdebug-${PHP_7_XDEBUG_VER}" \
 && docker-php-ext-enable xdebug \
 && apk del pcre-dev ${PHPIZE_DEPS}
