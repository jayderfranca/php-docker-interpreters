ARG TAG_BASE
FROM php:${TAG_BASE} AS builder

ARG XDEBUG_VER
ARG COMPOSER_VER
ARG PHPUNIT_VER
ARG BEHAT_VER
ARG CODECEPT_VER
ARG PHPSPEC_VER

ADD https://getcomposer.org/download/${COMPOSER_VER}/composer.phar /usr/local/bin/composer.phar
ADD https://phar.phpunit.de/phpunit-${PHPUNIT_VER}.phar /usr/local/bin/phpunit.phar
ADD https://github.com/phpspec/phpspec/releases/download/${PHPSPEC_VER}/phpspec.phar /usr/local/bin/phpspec.phar

RUN echo -e "7.1.99\n${PHP_VERSION}" | sort -n -t. -r | head -n1 > /.cmp_version

RUN cd /usr/local/bin \
 && curl -LSs https://box-project.github.io/box2/installer.php | php

RUN [ $(cat /.cmp_version) = "7.1.99" ] \
 && wget "https://codeception.com/releases/${CODECEPT_VER}/php56/codecept.phar" -O /usr/local/bin/codecept.phar \
 || wget "https://codeception.com/releases/${CODECEPT_VER}/codecept.phar" -O /usr/local/bin/codecept.phar

RUN cp "${PHP_INI_DIR}/php.ini-development" "${PHP_INI_DIR}/php.ini" \
 && sed -i 's/;phar.readonly = On/phar.readonly = Off/' /usr/local/etc/php/php.ini \
 && chmod +x /usr/local/bin/* \
 && mkdir /components

RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
 && pecl install "xdebug-${XDEBUG_VER}" \
 && docker-php-ext-enable xdebug

RUN cd /components \
 && wget "https://github.com/Behat/Behat/archive/refs/tags/v${BEHAT_VER}.tar.gz" -O behat.tar.gz \
 && tar -xzvf behat.tar.gz \
 && cd Behat-*/ \
 && wget "https://raw.githubusercontent.com/Behat/Behat/master/box.json" -O box.json \
 && composer.phar install --no-dev -o --quiet \
 && box.phar build \
 && cp behat.phar /usr/local/bin/.

RUN cd / \
 && composer.phar --version \
 && phpunit.phar --version \
 && behat.phar --version \
 && codecept.phar --version \
 && phpspec.phar --version


ARG TAG_BASE
FROM php:${TAG_BASE}

ARG DIR_EXT_TSTAMP

ENV PHP_LIB_DIR=/usr/local/lib/php/

COPY --from=builder "/usr/local/bin/composer.phar" "/usr/local/bin/composer"
COPY --from=builder "/usr/local/bin/phpunit.phar" "/usr/local/bin/phpunit"
COPY --from=builder "/usr/local/bin/behat.phar" "/usr/local/bin/behat"
COPY --from=builder "/usr/local/bin/codecept.phar" "/usr/local/bin/codecept"
COPY --from=builder "/usr/local/bin/phpspec.phar" "/usr/local/bin/phpspec"
COPY --from=builder "${PHP_INI_DIR}/php.ini" "${PHP_INI_DIR}/."
COPY --from=builder "${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini" "${PHP_INI_DIR}/conf.d/."
COPY --from=builder "${PHP_LIB_DIR}/extensions/no-debug-non-zts-${DIR_EXT_TSTAMP}/xdebug.so" "${PHP_LIB_DIR}/extensions/no-debug-non-zts-${DIR_EXT_TSTAMP}/."
