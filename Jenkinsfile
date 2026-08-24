
pipeline {
    agent {
        label 'agent'
    }
    options {
        timeout( time: 1 , unit: 'MINUTES' )
        disableConcurrentBuilds()
    }
    
    stages {
        stage('Init') {
            steps {
                sh """
                    ls -lrt
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