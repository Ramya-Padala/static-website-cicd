pipeline {
  agent any
  stages {
    stage('checkout') {
       steps {
       git branch: 'main',
         url: "https://github.com/Ramya-Padala/static-website-cicd.git"
    }
  }
      stage('build') {
    steps {
        echo"building docker image"
        sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
      }
      }
      stage('deploy') {
        steps {
        sh 'docker run -d --name apache-website -p 8080:80 httpd:latest'
      }
    }    
  }
}
