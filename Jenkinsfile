pipeline{
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 60, unit: 'SECONDS')
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

    }
}