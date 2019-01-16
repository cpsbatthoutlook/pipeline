pipeline {
  agent any
  stages {
    stage('Init') {
      steps {
        sh 'echo "Ist stage"'
        sleep 6
        git(url: 'https://github.com/cpsbatthoutlook/pipeline.git', branch: 'pipeline1')
        sh ' echo "checking pwd"'
        pwd()
        sh " checked pwd"
        fileExists 'Jenkinsfile-pipeline1.1'
        sh 'echo "file exists"'
      }
    }
  }
}
