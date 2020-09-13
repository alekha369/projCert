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
        git 'https://github.com/alekha369/projCert'
      }
    }
    
     stage('Building docker image') {
      steps{
        echo ' Build docker image'
      }
    }
       stage(' Selenium Testing') {
      steps {
        echo 'Selinium Testing'
      }
    }
    stage('Upload Image') {
      steps{
        echo 'Upload image'
        }
      }
     stage ('Deploy') {
           steps {
              echo 'deploy'
           }
       }
     stage('Remove Unused docker image') {
      steps{
         echo 'remove unused docket image'
      }
    }  
  }
 }
