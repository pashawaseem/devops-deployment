pipeline {
	agent any
	tools {
	    maven 'maven'
	}
	stages {
	   stage('Build Maven'){
			steps{
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/pashawaseem/devops-automations']]])
				sh 'mvn clean install'
			}
	   }
	   stage('Build Docker Image'){
			steps{
			    script{
				    sh 'docker build -t wasimpasha/devops-integration .'
			    }
			}
	   }
	   stage('Push docker to hub'){
	       steps{
	           script{
	               sh 'docker login -u wasimpasha -p Masterspace!1234'
	               sh 'docker push wasimpasha/devops-integration'
	           }
	       }
	   }
	}
}