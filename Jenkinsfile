pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // Set your preferred region
        DB_NAME = 'database-bash'
        DB_INSTANCE_IDENTIFIER = 'database-bash-instance'
        DB_USER = 'admin'
        DB_PASSWORD = 'yourpassword123'  // Use Jenkins credentials or secrets for better security
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from the repository (if needed)
                git branch: 'main', url: 'https://your-repository-url.git'
            }
        }

        stage('Install AWS CLI') {
            steps {
                sh '''
                if ! c
