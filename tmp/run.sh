#!/bin/bash
cp /tmp/gnuhealth-latest.tar.gz gnuhealth-latest.tar.gz
tar xzf gnuhealth-latest.tar.gz

cd gnuhealth-3.8.0
wget -qO- https://ftp.gnu.org/gnu/health/gnuhealth-setup-latest.tar.gz | tar -xzvf -
bash ./gnuhealth-setup install

cdexe && python3 ./trytond-admin --all --database=health

cd && ./start_gnuhealth.sh
