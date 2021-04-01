PHP_5_TAG=5-cli
PHP_5_TAG_BASE=5.6-cli-alpine
PHP_5_DIR_EXT_TSTAMP=20131226
PHP_5_XDEBUG_VER=2.5.5
PHP_5_COMPOSER_VER=2.0.12
PHP_5_PHPUNIT_VER=5.7.27
PHP_5_BEHAT_VER=3.7.0
PHP_5_CODECEPT_VER=4.1.20210328
PHP_5_PHPSPEC_VER=3.4.3

PHP_7_TAG=7-cli
PHP_7_TAG_BASE=7.4-cli-alpine
PHP_7_DIR_EXT_TSTAMP=20190902
PHP_7_XDEBUG_VER=3.0.3
PHP_7_COMPOSER_VER=2.0.12
PHP_7_PHPUNIT_VER=9.5.4
PHP_7_BEHAT_VER=3.8.1
PHP_7_CODECEPT_VER=4.1.20210328
PHP_7_PHPSPEC_VER=7.0.1

PHP_8_TAG=8-cli
PHP_8_TAG_BASE=8-cli-alpine
PHP_8_DIR_EXT_TSTAMP=20200930
PHP_8_XDEBUG_VER=3.0.3
PHP_8_COMPOSER_VER=2.0.12
PHP_8_PHPUNIT_VER=9.5.4
PHP_8_BEHAT_VER=3.8.1
PHP_8_CODECEPT_VER=4.1.20210328
PHP_8_PHPSPEC_VER=7.0.1

all: php5 php7 php8

php5:
	docker rmi php:${PHP_5_TAG} || exit 0
	docker build \
		--no-cache \
		--build-arg "TAG_BASE=${PHP_5_TAG_BASE}" \
		--build-arg "DIR_EXT_TSTAMP=${PHP_5_DIR_EXT_TSTAMP}" \
		--build-arg "XDEBUG_VER=${PHP_5_XDEBUG_VER}" \
		--build-arg "COMPOSER_VER=${PHP_5_COMPOSER_VER}" \
		--build-arg "PHPUNIT_VER=${PHP_5_PHPUNIT_VER}" \
		--build-arg "BEHAT_VER=${PHP_5_BEHAT_VER}" \
		--build-arg "CODECEPT_VER=${PHP_5_CODECEPT_VER}" \
		--build-arg "PHPSPEC_VER=${PHP_5_PHPSPEC_VER}" \
		--tag php:${PHP_5_TAG} \
		--file php-cli.dockerfile .
	docker rmi php:${PHP_5_TAG_BASE}

php7:
	docker rmi php:${PHP_7_TAG} || exit 0
	docker build \
		--no-cache \
		--build-arg "TAG_BASE=${PHP_7_TAG_BASE}" \
		--build-arg "DIR_EXT_TSTAMP=${PHP_7_DIR_EXT_TSTAMP}" \
		--build-arg "XDEBUG_VER=${PHP_7_XDEBUG_VER}" \
		--build-arg "COMPOSER_VER=${PHP_7_COMPOSER_VER}" \
		--build-arg "PHPUNIT_VER=${PHP_7_PHPUNIT_VER}" \
		--build-arg "BEHAT_VER=${PHP_7_BEHAT_VER}" \
		--build-arg "CODECEPT_VER=${PHP_7_CODECEPT_VER}" \
		--build-arg "PHPSPEC_VER=${PHP_7_PHPSPEC_VER}" \
		--tag php:${PHP_7_TAG} \
		--file php-cli.dockerfile .
	docker rmi php:${PHP_7_TAG_BASE}

php8:
	docker rmi php:${PHP_8_TAG} || exit 0
	docker build \
		--no-cache \
		--build-arg "TAG_BASE=${PHP_8_TAG_BASE}" \
		--build-arg "DIR_EXT_TSTAMP=${PHP_8_DIR_EXT_TSTAMP}" \
		--build-arg "XDEBUG_VER=${PHP_8_XDEBUG_VER}" \
		--build-arg "COMPOSER_VER=${PHP_8_COMPOSER_VER}" \
		--build-arg "PHPUNIT_VER=${PHP_8_PHPUNIT_VER}" \
		--build-arg "BEHAT_VER=${PHP_8_BEHAT_VER}" \
		--build-arg "CODECEPT_VER=${PHP_8_CODECEPT_VER}" \
		--build-arg "PHPSPEC_VER=${PHP_8_PHPSPEC_VER}" \
		--tag php:${PHP_8_TAG} \
		--file php-cli.dockerfile .
	docker rmi php:${PHP_8_TAG_BASE}
