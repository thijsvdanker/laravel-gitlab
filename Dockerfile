FROM thijsvandenanker/gitlab-ci-pipeline-php:7.4
MAINTAINER Thijs van den Anker <thijs@bitsnbolts.nl>

RUN cd ~ \
    && curl -O https://raw.githubusercontent.com/laravel/laravel/8.x/composer.json \
    && curl -sS https://getcomposer.org/installer | php \
    && php composer.phar install --no-autoloader --no-scripts --no-suggest \
