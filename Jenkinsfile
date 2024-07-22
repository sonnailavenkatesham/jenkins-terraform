pipeline{
    agent any
    timeout{ time: 1 unit: "minute"}
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