PHP_5_BASE_IMAGE=5.6-cli-alpine
PHP_7_BASE_IMAGE=7.4-cli-alpine

all: php5 php7

php5:
	docker rmi php:5-cli || exit 0
	docker build --no-cache --build-arg "PHP_5_BASE_IMAGE=${PHP_5_BASE_IMAGE}" --tag php:5-cli --file php5-cli.dockerfile .
	docker rmi php:${PHP_5_BASE_IMAGE}

php7:
	docker rmi php:7-cli || exit 0
	docker build --no-cache --build-arg "PHP_7_BASE_IMAGE=${PHP_7_BASE_IMAGE}" --tag php:7-cli --file php7-cli.dockerfile .
	docker rmi php:${PHP_7_BASE_IMAGE}
