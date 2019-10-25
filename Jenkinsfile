pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/Rajendra333/srivathasa.git'
      }
    }
    stage('build') {
      steps {
        bat 'mvn clean install'
      }
    }
    stage('test') {
      steps {
        bat 'mvn test'
      }
    }
    stage('sonar') {
      steps {
        bat 'mvn sonar:sonar'
      }
    }
  
  }
}




