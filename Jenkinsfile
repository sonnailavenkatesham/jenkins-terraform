pipeline{
    agent any
    options {
        ansiColor('xterm')
    }
    stages{
        stage("init"){
            steps{
                sh'''
                pwd
                ls -l
                terraform init
                '''
            }
        }
        stage("plan"){
            steps{
                sh'''
                pwd
                ls -l
                terraform plan
                '''
            }
        }
        stage("apply"){
            steps{
                sh'''
                pwd
                ls -l
                terraform apply -auto-approve
                '''
            }
            input {
                message "Should we continue?"
                ok "Yes, we should."
                }
        }

    }
    post{
        success{
            echo 'pipeline success'
        }
        failure{
            echo 'pipeline failed'
        }
    }
}