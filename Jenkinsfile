pipeline {
  agent {
    node {
      label 'node1'
    }

  }
  stages {
    stage('Clone') {
      parallel {
        stage('Clone') {
          steps {
            sh 'git clone https://github.com/ananhamze1/java-tomcat-maven-example-1'
          }
        }

        stage('Build') {
          steps {
            sh 'mvn clean install'
          }
        }

      }
    }

  }
}