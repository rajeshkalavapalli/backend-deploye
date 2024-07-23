pipeline{
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 15, unit: 'MINUTES') 
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    environment{
        def appVersion = ''
        def nexusUrl='44.202.115.103:8081/repository/backend'
    }
     parameters {
        string(name: 'appVersion', defaultValue: '1.0.0', description: 'what is the appversion?')

    }
    stages{
        stage('print the the version'){
            steps{
                script{
                   echo "application version is ${params.appVersion}"
                }
                
            }
        }
        stage('init'){
            steps{
                sh"""
                cd terraform
                terraform init 
                """
            }
        }
        stage('plan'){
            steps{
                sh"""
                cd terraform
                terraform plan -var="app_version=${params.appVersion}"
                """
            }
        }
        stage('deploy'){
            steps{
                sh"""
                cd terraform
                terraform apply -auto-approve 
                """
            }
        }
          
    }
    
    
    post{
        always{
            echo "when pipline useing "
            deleteDir()
        }
         success{
            echo "when pipeline sucess"
        }
         failure{
            echo "when pipeline faild "
        }
    }
} 
