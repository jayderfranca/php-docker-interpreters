# php-docker-interpreters

Cria uma imagem docker do cli do PHP com Xdebug para ser utilizado pela IDE PhpStorm.
Com esta opção, não é necessário instalar fisicamente o interpretador na máquina.

#### Imagem oficial: [library/php](https://hub.docker.com/_/php?tab=description)
#### Comando: `docker pull php:latest`

|Image gerada|Image base|Versão Xdebug|
|-|-|-:|
|php:5-cli|[php:5.6-cli-alpine](https://hub.docker.com/layers/php/library/php/5.6-cli-alpine/images/sha256-5dd6b6ea600342303f987d33524c0fae0347ae13be6ae55691d4acb873c203ea?context=explore)|2.5.5|
|php:7-cli|[php:7.4-cli-alpine](https://hub.docker.com/layers/php/library/php/7.4-cli-alpine/images/sha256-cc9d43710ae41eaf879c7f7b6458f5a0988093602bb827cbf14fc2458d753ace?context=explore)|2.9.6|

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
      <tr><th>PHP 5.5</th><td></td><td></td><td></td><td></td><td></td><td>✔</td><td>✔</td><td>✔</td><td>✔</td></tr>
      <tr><th>PHP 5.4</th><td></td><td></td><td></td><td></td><td></td><td></td><td>✔</td><td>✔</td><td>✔</td></tr>
      <tr><th>PHP 5.3</th><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>✔</td></tr>
      <tr><th>PHP 5.2</th><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>✔</td></tr>
   </tbody>
</table>
Fonte: https://xdebug.org/docs/compat

#### Configuração no [PhpStorm](https://www.jetbrains.com/phpstorm/)
![PhpStorm Configuration](/phpstorm.png)
