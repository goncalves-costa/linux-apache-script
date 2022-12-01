#!/bin/bash

echo 'Atualizando o servidor'

apt update -y

apt upgrade -y

echo 'Servidor atualizado'

echo 'Intalando ferramentas Linux'

apt install unzip -y
apt install wget -y

echo 'Ferramentas instaladas'

echo 'Instalando apache'

apt install apache2 -y


echo 'Apache instalado'

rm /var/www/html/index.html

echo 'Subindo os arquivos'
cd /tmp/

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd /tmp/linux-site-dio-main/

cp -R * /var/www/html/
