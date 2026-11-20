pipeline {
  agent any
  stages {
    stage('checkout') {
       steps {
       git branch: 'main',
         url: "https://github.com/Ramya-Padala/static-website-cicd.git"
    }
  }
      stage('Build') {
    steps {
        echo 'building docker image'
        sh 'docker build -t httpd:v1 .'
      }
      }
    stage('Stop Old Container') {
            steps {
                sh '''
                    docker stop ${CONTAINER} || true
                    docker rm ${CONTAINER} || true
                '''
            }
        }
      stage('Deploy') {
            steps {
              echo 'Deploy Apache Application'
              sh 'docker run -d --name ${CONTAINER} -p 8080:80 httpd:v1'
      }
    }    
  }
}
