
pipeline {
  agent any
  stages {
    stage ('checkout') {  
      steps { checkout scm }
      }
      
    stage ('clean') {  
      steps { sh './mvnw clean' }
      }
    
    
      
    stage ('compile') {  
      steps { sh './mvnw compile' }
      }
     
    stage ('finish') {  
      steps { sh 'echo good' }
      }
          
  }


}
