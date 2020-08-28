pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }

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
			  sudo -n docker build -t phpbasic .
			 '''
			}
		}
		stage('Run dokcer image'){
			steps{
			sh '''#!/bin/bash
			echo 'running docker image'
		    sudo docker run -p 8000:8050 
			echo 'application deployed' phpbasic
			'''
			}
		}
    }
}
