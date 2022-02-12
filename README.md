# Instalación GNU Health

****

**Es necesario tener docker y docker-compose instalado**

Ejecutar el comando para levantar el contenedor

`docker-compose up -d`

Ingresar al contenedor

`docker-compose exec gnuhealth bash`

Ejecutar el script de instalación parte #1

`cd tmp/ && ./install.sh`

Ejecutar el script de instalación parte #2

`./install.sh`

Recarga bash

`source ${HOME}/.gnuhealthrc`

Configurar gnuhealth

`cdexe && python3 ./trytond-admin --all --database=health`

Correr gnuhealth server

`cd && ./start_gnuhealth.sh`

Instalar el cliente gnuhealth

https://en.wikibooks.org/wiki/GNU_Health/Installation
