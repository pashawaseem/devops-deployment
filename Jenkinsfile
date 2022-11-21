pipeline {
	agent any
	tools {
	    maven 'maven'
	}
	stages {
	   stage('Build Maven') {
			steps {
			    script {
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pashawaseem/devops-automations']]])
				sh 'mvn clean install'
			    }
			}
	   }
	   stage('Docker Build Image') {
	       steps {
	           script {
	                sh 'docker build -t wasimpasha/devops-integrations .'
	           }
	       }
	   }
	   stage('Push Docker Image to Hub') {
	       steps {
	           script {
	               //withCredentials([string(credentialsId: 'dockerhub-password', variable: 'DockerHubPwd')])
	               //echo "DockerHubPwd"
	               sh 'docker login -u wasimpasha -p Masterspace!1234'
	               sh 'docker push wasimpasha/devops-integrations'
	           }
	       }
	   }
    }
}