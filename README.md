# Práctica 5: Balanceador de carga con Apache

En esta práctica vamos a crear un balanceador, es decir, un "software" que lo que hace es administrar las peticiones de los clientes para no saturar los servidores. 

![](Imágenes/balanceador.png);

Usaremos las máquinas de anteriores prácticas.

## INSTALACIÓN

Crearemos otra máquina Ubuntu con estos requisitos:

- Abrir puerto SSH
- Abrir puerto HTTP
- Abrir puerto HTTPS

Una vez la máquina ya creada crearemos un archivo de configuración 000-deafult.conf y dentro de github crearemos un nuevo repositorio para este archivo (está público).

Este archivo es lo que tendremos que clonar en nuestro script ya que será la que redireccione las peticiones al servidor. 

Dentro del script necesitaremos instalar:

- Apache
- Módulos para apache 

```
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

```
- Y por último clonar nuestro archivo 000-default.conf y copiarlo en el archivo sites-enable de apache. 

Ejecutamos script y comprobamos.

:smile_cat:
