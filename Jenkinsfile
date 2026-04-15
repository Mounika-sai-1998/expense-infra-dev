
pipeline {
    agent {
        label 'dev'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')          // Timeout counter starts AFTER agent is allocated
        disableConcurrentBuilds()        // to queue a build when there’s already an executing build of the Pipeline
    }
    stages {
        stage ('Init') {
            steps {
                sh '''
                   cd 01-vpc
                   terraform init -reconfigure
                '''
            }
        }
        stage('Plan') { 
            steps {
                sh 'echo This is Test'
                
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo This is Deploy'
            }
        }
        stage('Destroy') { 
            steps {
                sh 'echo This is Deploy'
            }
        }

    }
}