all: php5 php7

php5:
	docker rmi php:5.6-cli || exit 0
	docker build --no-cache --tag php:5.6-cli --file php5.6-cli.dockerfile .
	docker rmi php:5.6-cli-alpine

php7:
	docker rmi php:7.4-cli || exit 0
	docker build --no-cache --tag php:7.4-cli --file php7.4-cli.dockerfile .
	docker rmi php:7.4-cli-alpine
