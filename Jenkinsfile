pipeline {
  agent any

  options {
    timeout(time: 2, unit: 'MINUTES')
  }

  environment {
    ARTIFACT_ID = "ezequielmirallas/testapp:${env.BUILD_NUMBER}"
  }
   stages {
   stage('Building image') {
      steps{
          sh '''
          ls
          docker build -t testapp .
             '''  
        }
    }
  
  
    stage('Run tests') {
      steps {
        sh "docker run test npm testapp"
      }
    }

       stage('Deploy') {
            steps {
                script {
                   
                    sh 'docker run -it -d -p 3003:3003 --name testapp testapp'
                }
            }
        }
    }
}


    
  

