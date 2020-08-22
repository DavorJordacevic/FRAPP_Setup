#!/bin/bash

export PGPASSWORD=postgres

createdb -p 5432 -h localhost -U postgres -E UTF8 -e FRAPP_Dev
psql -d FRAPP_Dev -p 5432 -h localhost -U postgres --no-password -f database.sql
psql -d FRAPP_Dev -p 5432 -h localhost -U postgres --no-password -f schema.sql
echo "===Database created successfully==="
