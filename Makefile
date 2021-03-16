PHP_5_TAG=5-cli
PHP_5_TAG_BASE=5.6-cli-alpine
PHP_5_XDEBUG_VER=2.5.5

PHP_7_TAG=7-cli
PHP_7_TAG_BASE=7.4-cli-alpine
PHP_7_XDEBUG_VER=3.0.3

all: php5 php7

php5:
	docker rmi php:${PHP_5_TAG} || exit 0
	docker build \
		--no-cache \
		--build-arg "PHP_5_TAG_BASE=${PHP_5_TAG_BASE}" \
		--build-arg "PHP_5_XDEBUG_VER=${PHP_5_XDEBUG_VER}" \
		--tag php:${PHP_5_TAG} \
		--file php${PHP_5_TAG}.dockerfile .
	docker rmi php:${PHP_5_TAG_BASE}

php7:
	docker rmi php:${PHP_7_TAG} || exit 0
	docker build \
		--no-cache \
		--build-arg "PHP_7_TAG_BASE=${PHP_7_TAG_BASE}" \
		--build-arg "PHP_7_XDEBUG_VER=${PHP_7_XDEBUG_VER}" \
		--tag php:${PHP_7_TAG} \
		--file php${PHP_7_TAG}.dockerfile .
	docker rmi php:${PHP_7_TAG_BASE}
