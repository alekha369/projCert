pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
       
    }

    stages {
        stage('preparation') {
            steps {
                git 'https://gitlab.com/chaitanyadev/poc-pipeline.git'
            }
        }
		stage('build docker image'){
			steps{
			 sh '''#!/bin/bash
			  echo 'inside bash'
			  echo 'building docker image'
			  cd /var/lib/jenkins/workspace/phpproject
			  sudo -n docker build -t phpbasic .
			 '''
			}
		}
		stage('Run dokcer image'){
			steps{
			sh '''#!/bin/bash
			echo 'running docker image'
		    sudo docker run -p 7050:80 
			echo 'application deployed' phpbasic
			'''
			}
		}
    }
}
