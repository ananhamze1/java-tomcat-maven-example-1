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
}
