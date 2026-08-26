
pipeline {
    agent {
        label 'agent-1'
    }
    options {
        timeout( time: 1 , unit: 'MINUTES' )
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'Action', choices: ['Apply', 'Deploy'], description: 'Pick something')
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
            when {
                expression {
                    params.Action == Apply
                }
            }
            steps {
                sh """
                    cd 01-vpc
                    terraform plan
                """
                
            }
        }
        stage('Deploy') {
            when {
                expression {
                    params.Action == Apply
                }
            }
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }
            steps {
                sh """
                    cd 01-vpc
                    terraform apply --auto-approve
                """
            }
        }

        stage('Destroy') {
            when {
                expression {
                    params.Action == Destroy
                }
            }
            steps {
                sh """
                    cd 01-vpc
                    terraform destroy --auto-approve
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