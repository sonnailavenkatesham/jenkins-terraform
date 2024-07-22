pipeline{
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 360, unit: 'SECONDS')
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