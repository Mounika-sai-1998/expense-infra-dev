
pipeline {
    agent {
        label 'dev'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')          // Timeout counter starts AFTER agent is allocated
        disableConcurrentBuilds()        // to queue a build when there’s already an executing build of the Pipeline
        ansiColor('xterm')
    }
     parameters {
        choice(name: 'action', choices: ['Apply', 'Destroy'], description: 'Pick something')
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
                sh '''
                   cd 01-vpc
                   terraform plan
                '''
                
            }
        }
        stage('Deploy') { 
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }

            steps {
                sh '''
                   cd 01-vpc
                   terraform apply -auto-approve
                '''
            }
        }
        stage('Destroy') { 
            steps {
                sh 'echo This is Deploy'
            }
        }

    }
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()    // to delete workspace after the build
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}