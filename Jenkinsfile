pipeline {
  environment {
    dockerRegistry = "alekha/demo"
    dockerRegistryCredential = 'dockerhub'
    dockerImage = ''
  }
    agent any

    stages {
        stage('Cloning Git') {
            steps {
                git 'https://github.com/alekha369/projCert.git'
            }
        }
		stage('build docker image'){
			steps{
			 sh '''#!/bin/bash
			  echo 'inside bash'
			  echo 'building docker image'
			  cd /var/lib/jenkins/workspace/deployment
			  sudo -n docker build -t phpapp:v1 .
			 '''
			}
		}
		stage('Run dokcer image'){
			steps{
			sh '''#!/bin/bash
			echo 'running docker image'
			sudo docker rmi phpapp:v1
		        sudo docker run -d --name appconatiner -p 9090:80 phpapp:v1
			echo 'application deployed' 
			'''
			}
		}
	   stage ('test') {
	   steps{
			sh '''#!/bin/bash
			echo 'testing php app'
		        cd /var/lib/jenkins/workspace/deployment
			java -jar php-selenium.jar
			'''
			}
		     post { 
                failure { 
                         sh "sudo docker rm -f appconatiner"
                        }
		    }						
              }
  }
}
