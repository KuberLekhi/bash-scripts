pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // This step clones the repository
                checkout scm
            }
        }
        stage('Run Bash Script') {
            steps {
                // Grant execute permissions to the script
                sh 'chmod +x create_database.sh'
                
                // Execute the bash script
                sh './create_database.sh'
            }
        }
    }
}
