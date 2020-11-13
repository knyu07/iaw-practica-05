
#!/bin/bash
set -x
# Actualizamos la lista de paquetes
apt update

#Actualizamos los paquete
apt upgrade -y

# APACHE
apt install apache2 -y

# Descargamos y copiamos el archivo de configuración de Apache
git clone https://github.com/knyu07/balanceador
cp /home/ubuntu/balanceador/000-default.conf /etc/apache2/sites-enabled/

#Activamos los módulos
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests

#Reiniciamos
systemctl restart apache2
