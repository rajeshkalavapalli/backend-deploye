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
        def nexusUrl='54.235.229.243:8081/repository/backend'
    }
     parameters {
        string(name: 'appVersion', defaultValue: '1.0.0', description: 'what is the application version ?')

    }
    stages{
        stage('print the version'){
            steps{
                sh"""
                echo "application version: ${params.appVersion}"
                """
                
            }
        }

        
        stage('deploye'){
            steps{
                dnf params = [
                    string(name: 'appVersion', value: 'stage')
                ]
                script{
                   
                    build job: 'backend-deploye', parameters: [], propagate: false
                }
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
