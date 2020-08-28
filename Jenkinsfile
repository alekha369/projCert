pipeline {
    agent any

    stages {
        stage('preparation') {
            steps {
                git 'https://github.com/ChaitanyaReddy-dev/projCert.git'
            }
        }
		stage('build docker image'){
			steps{
			 sh '''#!/bin/bash
			  echo 'inside bash'
			  echo 'building docker image'
			  cd /var/lib/jenkins/workspace/phpproject
			  sudo -n docker build -t phpbasic:v1 .
			 '''
			}
		}
		stage('Run dokcer image'){
			steps{
			sh '''#!/bin/bash
			echo 'running docker image'
		    sudo docker run -d -p 8000:80 phpbasic:v1
			echo 'application deployed' 
			'''
			}
		}
    }
}
