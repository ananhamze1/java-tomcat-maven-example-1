pipeline {
  agent any
  stages {
    stage('Clean') {
      steps {
        sh 'echo $jenkins_home'
        sh '''export JENKINS_HOME=/var/jenkins
/usr/bin/mvn clean'''
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