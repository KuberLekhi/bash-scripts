#!/bin/bash

# Variables (Update these as needed)
DB_NAME="database-bash"
DB_INSTANCE_IDENTIFIER="database-bash-instance"
DB_USER="admin"
DB_PASSWORD="yourpassword123"
DB_ENGINE="mysql"              # Or "postgres", "mariadb", etc.
DB_INSTANCE_CLASS="db.t3.micro" # Free tier eligible
DB_STORAGE=20                   # Storage in GB
DB_REGION="us-east-1"           # Your AWS region

# Create RDS database
echo "Creating RDS database named $DB_NAME..."

aws rds create-db-instance \
    --db-instance-identifier $DB_INSTANCE_IDENTIFIER \
    --allocated-storage $DB_STORAGE \
    --db-instance-class $DB_INSTANCE_CLASS \
    --engine $DB_ENGINE \
    --master-username $DB_USER \
    --master-user-password $DB_PASSWORD \
    --db-name $DB_NAME \
    --backup-retention-period 7 \
    --multi-az false \
    --publicly-accessible true \
    --region $DB_REGION

# Check if the database creation was successful
if [ $? -eq 0 ]; then
    echo "RDS database $DB_NAME is being created. This may take a few minutes."
else
    echo "Failed to create RDS database. Please check your AWS settings."
fi
