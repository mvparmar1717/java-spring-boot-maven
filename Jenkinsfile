pipeline {

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }
    agent any

    tools {
        maven 'maven_3.6.3'
    }

    stages {
        stage('Code Compilation') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('QA Execution') {
            steps {
                sh 'mvn clean test'
            }
        }

        stage('Code Package') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
           steps {
                sh 'docker build -t mvparmar1717/java-spring-boot-maven1 .'
           }
         }

        /* stage('Run Docker Image') {
                   steps {
                        sh 'docker run -d --name mvnspring1 -p 8090:8080 mvparmar1717/java-spring-boot-maven1'
                   }
                 } */

        stage('Upload Docker to DockerRegistry') {
           steps {
		      script {
			     withCredentials([string(credentialsId: 'dockerhubC', variable: 'dockerhubC')]){
                 sh 'docker login docker.io -u mvparmar1717 -p ${dockerhubC}'
                 echo "Push Docker Image to DockerHub : In Progress"
				 sh 'docker push mvparmar1717/java-spring-boot-maven:latest'
				 echo "Push Docker Image to DockerHub : In Progress"
				 }
              }
            }
        }


        stage('Deploy to Production') {
            steps {
                sh 'date;date'
            }
        }

    }
}