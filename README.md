# php-interpreters

Cria uma imagem docker do cli do PHP com Xdebug para ser utilizado pela IDE PhpStorm.
Com esta opção, não é necessário instalar fisicamente o interpretador na máquina.

#### Imagem oficial: [library/php](https://hub.docker.com/_/php?tab=description)
#### Comando: `docker pull php:latest`

|Image gerada|Image base|Versão Xdebug|
|-|-|-:|
|php:5.6-cli|[php:5.6-cli-alpine](https://hub.docker.com/layers/php/library/php/5.6-cli-alpine/images/sha256-a59111883afcee359f1ad5b292a67f4437808d1167e5f5732ebcf6ef426e298a?context=explore)|2.5.5|
|php:7.4-cli|[php:7.4-cli-alpine](https://hub.docker.com/layers/php/library/php/7.4-cli-alpine/images/sha256-cc9d43710ae41eaf879c7f7b6458f5a0988093602bb827cbf14fc2458d753ace?context=explore)|2.9.6|


#### [Grade de compatibilidade](https://xdebug.org/docs/compat)
<table class="versions">
   <thead>
      <tr>
         <th rowspan="2">PHP<br>Version</th>
         <th colspan="9">Xdebug Version</th>
      </tr>
      <tr class="xdebugversion">
         <th class="future">3.0</th>
         <th class="supported">2.9</th>
         <th>2.8</th>
         <th>2.7</th>
         <th>2.6</th>
         <th>2.5</th>
         <th>2.4</th>
         <th>2.3</th>
         <th>2.2</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <th class="future">PHP 8.0        </th>
         <td class="future">✔</td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th class="supported">PHP 7.4</th>
         <td class="future">✔</td>
         <td class="supported">✔</td>
         <td>✔</td>
         <td>✔</td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th class="supported">PHP 7.3</th>
         <td class="future">✔</td>
         <td class="supported">✔</td>
         <td>✔</td>
         <td>✔</td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th class="legacy">PHP 7.2</th>
         <td class="future">✔</td>
         <td class="legacy">✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th class="legacy">PHP 7.1</th>
         <td class="future">✔</td>
         <td class="legacy">✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td> </td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th>PHP 7.0</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td> </td>
         <td> </td>
      </tr>
      <tr>
         <th>PHP 5.6</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
      </tr>
      <tr>
         <th>PHP 5.5</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
      </tr>
      <tr>
         <th>PHP 5.4</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
         <td>✔</td>
         <td>✔</td>
      </tr>
      <tr>
         <th>PHP 5.3</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
      </tr>
      <tr>
         <th>PHP 5.2</th>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td> </td>
         <td>✔</td>
      </tr>
   </tbody>
</table>