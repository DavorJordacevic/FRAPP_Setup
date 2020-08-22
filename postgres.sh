#!/bin/bash

sudo apt-get update
sudo apt install postgresql postgresql-contrib

sudo -i -u postgres
psql
\q
exit

echo "===Postgres installed successfully==="

