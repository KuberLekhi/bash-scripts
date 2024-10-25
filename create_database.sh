#!/bin/bash

# Check if SQLite is installed
if ! command -v sqlite3 &> /dev/null
then
    echo "SQLite is not installed. Installing now..."
    sudo apt-get install sqlite3
fi

# Create a SQLite database and a table with the desired structure
sqlite3 mydatabase.db "CREATE TABLE IF NOT EXISTS data (id INTEGER PRIMARY KEY, name TEXT, age INTEGER, favourite_colour TEXT);"
echo "Database and table created!"
