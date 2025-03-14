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
        sh "docker run testapp npm test"
      }
    }

       stage('Deploy') {
            steps {
                script {
                   
                    sh 'docker run -it -d -p 5001:5001 testapp'
                }
            }
        }
    }
}


    
  

