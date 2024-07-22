pipeline{
    agent any
    options{
    timeout(time: 1, unit: 'hour')
    }
    stages{
        stage("init"){
            steps{
                sh'''
                pwd
                ls -l
                '''
            }
        }

    }
}