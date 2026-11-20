pipeline {
  agent any
  stages {
  steps {
    stage('checkout') {
       git branch: 'main',
         url: "https://github.com/Ramya-Padala/static-website-cicd.git"
    }
  }
    steps {
      stage('build') {
        echo"build docker image"
        sh 'docker build -t apache-static-website:v1'
      }
    }
    steps{
      stage('deploy') {
        sh 'docker run -d --name apache-website -p 8080:80 httpd:latest'
      }
    }    
  }
}
