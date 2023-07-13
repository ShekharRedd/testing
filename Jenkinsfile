
pipeline {
    agent any
    stages {
        stage('init') {
            steps{
                script{

                        echo "hello"
                }
            }
        }
        stage("build") {
            steps{
                script {
                    echo "hi"
                }
            }
        }
        stage("provision-server") {
            environment {
                AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
                AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
            }
            }
            steps {
                script {
                    dir(terraform) {
                        sh "terraform init"
                        sh "terraform plan"
                    }


                }


                }
            }
        }
    



