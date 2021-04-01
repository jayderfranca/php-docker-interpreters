ARG PHP_8_TAG_BASE
FROM php:${PHP_8_TAG_BASE} AS builder

ARG PHP_8_XDEBUG_VER

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install "xdebug-${PHP_8_XDEBUG_VER}" \
 && docker-php-ext-enable xdebug \
 && apk del pcre-dev ${PHPIZE_DEPS}

ARG PHP_8_TAG_BASE
FROM php:${PHP_8_TAG_BASE}

ENV PHP_LIB_DIR=/usr/local/lib/php/

COPY --from=builder "${PHP_INI_DIR}/php.ini" "${PHP_INI_DIR}/."
COPY --from=builder "${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini" "${PHP_INI_DIR}/conf.d/."
COPY --from=builder "${PHP_LIB_DIR}/extensions/no-debug-non-zts-20200930/xdebug.so" "${PHP_LIB_DIR}/extensions/no-debug-non-zts-20200930/."