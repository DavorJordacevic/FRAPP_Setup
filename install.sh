#!/bin/bash

bash ./plsql_db.sh
bash ./frapp.sh -y
bash ./frontend.sh

echo "===Installation complete==="

