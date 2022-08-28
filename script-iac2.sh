#!/bin/bash

echo "Atualizando sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando apache2..."
apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Baixando e copiando os arquivos da apicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-projeto2-iac/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/
