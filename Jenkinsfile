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





https://medium.com/@gustavo.guss/jenkins-sending-email-on-post-build-938b236545d2