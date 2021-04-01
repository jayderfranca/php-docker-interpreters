# php-docker-interpreters

Cria uma imagem docker do cli do PHP com Xdebug para ser utilizado pela IDE PhpStorm.
Com esta opção, não é necessário instalar fisicamente o interpretador na máquina.

#### Imagem oficial: [library/php](https://hub.docker.com/_/php?tab=description)
#### Comando: `docker pull php:latest`

|Image gerada|Image base|Versão Xdebug|
|-|-|-:|
|php:5-cli|[php:5.6-cli-alpine](https://github.com/docker-library/php/tree/783878384a8f3953ed571e5a34ba0fe546726c85/5.6/alpine3.8/cli)|2.5.5|
|php:7-cli|[php:7.4-cli-alpine](https://github.com/docker-library/php/tree/1bc63c1ce4294a4ecb50c60dcf6a57d6749cba7d/7.4/alpine3.13/cli)|3.0.3|
|php:8-cli|[php:8.0-cli-alpine](https://github.com/docker-library/php/tree/64811791f0682262478d73514819908fcfe73d7f/8.0/alpine3.13/cli)|3.0.3|


#### Cada imagem possui as seguintes ferramentas:

[Composer](https://getcomposer.org/): /usr/local/bin/composer

Test Frameworks:
   * [PHPUnit](https://phpunit.de/): /usr/local/bin/phpunit
   * [Behat](https://docs.behat.org/en/latest/): /usr/local/bin/behat
   * [Codeception](https://codeception.com/): /usr/local/bin/codeception
   * [PHPSpec](http://www.phpspec.net/en/stable/): /usr/local/bin/phpspec


#### Grade de compatibilidade
<table>
   <thead>
      <tr>
         <th rowspan="2">PHP<br>Version</th>
         <th colspan="9">Xdebug Version</th>
      </tr>
      <tr>
         <th>3.0</th><th>2.9</th><th>2.8</th><th>2.7</th><th>2.6</th><th>2.5</th><th>2.4</th><th>2.3</th><th>2.2</th>
      </tr>
   </thead>
   <tbody>
      <tr><th>PHP 8.0</th><td>✔</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
      <tr><th>PHP 7.4</th><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td></td><td></td><td></td><td></td><td></td></tr>
      <tr><th>PHP 7.3</th><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td></td><td></td><td></td><td></td><td></td></tr>
      <tr><th>PHP 7.2</th><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td></td><td></td><td></td><td></td></tr>
      <tr><th>PHP 7.1</th><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td></td><td></td><td></td></tr>
      <tr><th>PHP 7.0</th><td></td><td></td><td></td><td>✔</td><td>✔</td><td>✔</td><td>✔</td><td></td><td></td></tr>
      <tr><th>PHP 5.6</th><td></td><td></td><td></td><td></td><td></td><td>✔</td><td>✔</td><td>✔</td><td>✔</td></tr>
   </tbody>
</table>
Fonte: https://xdebug.org/docs/compat

#### Configuração no [PhpStorm](https://www.jetbrains.com/phpstorm/)
![PhpStorm Configuration](/phpstorm.png)
