pipeline {
  environment {
    dockerRegistry = "alekha/demo"
    dockerRegistryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  tools {
    nodejs "node"
  }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/alekha369/NodeJS'
      }
    }
    stage('Docker Install') {
       steps {
         echo 'Docker install'
       }
    }	      
  }
}
