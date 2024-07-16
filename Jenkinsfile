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
        stage('read the version'){
            steps{
                sh"""
                echo "application version: ${paramas.appVersion}"
                """
                
            }
        }

        
    //     stage('deploye'){
    //         steps{
    //             script{
                   
    //                 build job: 'backend-deploye', parameters: [string(name: 'targetEnvironment', value: 'stage')], propagate: false
    //             }
    //         }
        
    //     }
    // }
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
