all: php5 php7

php5:
	docker rmi php:5-cli || exit 0
	docker build --no-cache --tag php:5-cli --file php5-cli.dockerfile .
	docker rmi php:5-cli-alpine

php7:
	docker rmi php:7-cli || exit 0
	docker build --no-cache --tag php:7-cli --file php7-cli.dockerfile .
	docker rmi php:7-cli-alpine
