#!/bin/bash

./postgres.sh
./plsql_db.sh
./frapp.sh
./fe.sh

echo "Installation complete"

