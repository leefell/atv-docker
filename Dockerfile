FROM php:8.2-apache                  

RUN apt update                       # Atualiza a lista de pacotes do sistema

ENV DEBIAN_FRONTEND=noninteractive   

RUN docker-php-ext-install pdo_mysql mysqli   # Instala as extensões pdo_mysql e mysqli do PHP
RUN docker-php-ext-enable pdo_mysql mysqli    # Habilita as extensões pdo_mysql e mysqli

WORKDIR /var/www/html                

COPY ./app/ /var/www/html/           

RUN chown -R www-data:www-data /var/www/html  # Altera o dono dos arquivos para o usuário do Apache
RUN chmod -R 755 /var/www/html       # Define permissões de leitura e execução para os arquivos

