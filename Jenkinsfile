pipeline{
    agent { label 'Agent' }
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
                ls -l
                terraform plan
                '''
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