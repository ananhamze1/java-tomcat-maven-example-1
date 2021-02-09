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
      when {
        expression {
          params.test == true
        }

      }
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

    stage('Deploy') {
      agent {
        node {
          label 'master'
        }

      }
      steps {
        sh '''cd /var/lib/jenkins/workspace/va-tomcat-maven-example-1_master
docker build -t test .
docker run -d test'''
      }
    }

  }
  parameters {
    string(name: 'name', defaultValue: 'anan', description: 'name')
    booleanParam(name: 'test', defaultValue: true, description: 'Run Tests')
  }
}