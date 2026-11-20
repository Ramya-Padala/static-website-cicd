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
        echo"build docker image"
        sh 'docker build -t apache-static-website:v1'
      }
      }
      stage('deploy') {
        steps {
        sh 'docker run -d --name apache-website -p 8080:80 httpd:latest'
      }
    }    
  }
}
