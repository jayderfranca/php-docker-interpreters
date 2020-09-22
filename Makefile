PHP_5_TAG=5-cli
PHP_7_TAG=7-cli
PHP_5_TAG_BASE=5.6-cli-alpine
PHP_7_TAG_BASE=7.4-cli-alpine

all: php5 php7

php5:
	docker rmi php:${PHP_5_TAG} || exit 0
	docker build --no-cache --build-arg "PHP_5_TAG_BASE=${PHP_5_TAG_BASE}" --tag php:5-cli --file php5-cli.dockerfile .
	docker rmi php:${PHP_5_TAG_BASE}

php7:
	docker rmi php:${PHP_7_TAG} || exit 0
	docker build --no-cache --build-arg "PHP_7_TAG_BASE=${PHP_7_TAG_BASE}" --tag php:7-cli --file php7-cli.dockerfile .
	docker rmi php:${PHP_7_TAG_BASE}
