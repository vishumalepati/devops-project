pipeline {
    agent none

    stages {
        stage('Building Website') {
            agent any
            steps {
                build job: "Building Website", wait: true
            }
        }
    }
    stages {
        stage('Testing Website') {
            when {
                expression { 
                   return params.Branch == 'develop'
                }
            }
            agent{
                label 'test'
            }
            steps {
                build job: "Testing Website", wait: true
            }
        }
    }
}
