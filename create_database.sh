#!/bin/bash

# Check if SQLite is installed
if ! command -v sqlite3 &> /dev/null
then
    echo "SQLite is not installed. Installing now..."
    sudo apt-get install sqlite3
fi

# Create a SQLite database and a table to store data
sqlite3 mydatabase.db "CREATE TABLE IF NOT EXISTS data (id INTEGER PRIMARY KEY, temperature REAL, humidity REAL);"
echo "Database and table created!"
