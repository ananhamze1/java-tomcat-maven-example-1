pipeline {
  agent any
  stages {
    stage('Clean') {
      steps {
        dir(path: '/var/jenkins/workspace/va-tomcat-maven-example-1_master') {
          sh 'echo $JENKINS_HOME'
          sh '''export JENKINS_HOME=/var/jenkins
echo $PATH
export PATH=$PATH:/usr/bin/mvn
echo $PATH
mvn clean'''
        }

      }
    }

    stage('Compile') {
      steps {
        sh '/usr/bin/mvn compile'
      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh '/usr/bin/mvn test'
          }
        }

        stage('Test 1') {
          steps {
            sh '/usr/bin/mvn test'
          }
        }

        stage('Test 2') {
          steps {
            sh '/usr/bin/mvn test'
          }
        }

      }
    }

    stage('Package') {
      steps {
        sh '/usr/bin/mvn package'
      }
    }

  }
  environment {
    JENKINS_HOME = '/var/jenkins'
  }
}