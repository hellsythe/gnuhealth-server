#!/bin/bash
# cp /tmp/gnuhealth-latest.tar.gz solo si se quieres instalar una version especifica
wget https://ftp.gnu.org/gnu/health/gnuhealth-latest.tar.gz
sudo service postgresql restart
sudo su - postgres -c "createuser --createdb --no-createrole --no-superuser gnuhealth"
tar xzf gnuhealth-latest.tar.gz
cd gnuhealth-3.8.0
wget -qO- https://ftp.gnu.org/gnu/health/gnuhealth-setup-latest.tar.gz | tar -xzvf -
bash ./gnuhealth-setup install
source ${HOME}/.gnuhealthrc

createdb health
cdexe

python3 ./trytond-admin --all --database=health
