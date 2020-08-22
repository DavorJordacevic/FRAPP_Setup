#!/bin/bash

bash ./postgres.sh
bash ./plsql_db.sh
bash ./frapp.sh -y
bash ./frontend.sh

echo "===Installation complete==="

