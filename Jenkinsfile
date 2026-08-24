
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
                    terraform init --upgrade
                """
            }
        }
        stage('Plan') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }
            steps {
                sh """
                    cd 01-vpc
                    terraform plan
                """
                
            }
        }
        stage('Deploy') {
            steps {
                sh """
                    cd 01-vpc
                    terraform approve --auto-approve
                """
            }
        }
        
    }
    post {
        always {
            echo "it will run always"
            deleteDir()
        }
        success {
            echo "it will run when the pipeline is success"
        }
         failure {
            echo "it will run when pipeline is failure"
        }
    }
    
}