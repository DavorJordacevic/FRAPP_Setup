#!/bin/bash

sudo -i -u postgres
psql

createdb FRAPP_Dev
psql -d FRAPP_Dev

\q
exit

psql -U postgres -d FRAPP_Dev < dump.sql

echo "Database created successfully"
