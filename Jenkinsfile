
pipeline {
    agent {
        label 'agent'
    }
    options {
        timeout( time: 1 , unit: 'MINUTES' )
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    
    stages {
        stage('Init') {
            steps {
                sh """
                    cd 01-vpc
                    terraform init --reconfigure
                """
            }
        }
        stage('Plan') {
            steps {
                echo 'Testing...'
                
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
        
    }
    post {
        always {
            echo "it will run always"
        }
        success {
            echo "it will run when the pipeline is success"
        }
         failure {
            echo "it will run when pipeline is failure"
        }
    }
    
}