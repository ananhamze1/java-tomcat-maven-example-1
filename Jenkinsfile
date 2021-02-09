pipeline {
  agent any
  stages {
    stage('Clean') {
      steps {
        sh 'mvn clean'
      }
    }

    stage('Compile') {
      steps {
        sh 'mvn compile'
      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'mvn test'
          }
        }

        stage('Test 1') {
          steps {
            sh 'mvn test'
          }
        }

        stage('Test 2') {
          steps {
            sh 'mvn test'
          }
        }

      }
    }

    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }

  }
}