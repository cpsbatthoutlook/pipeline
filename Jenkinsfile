pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        sh 'echo "Ist stage"'
        sleep 6
        git(url: 'https://github.com/cpsbatthoutlook/pipeline.git', branch: 'pipeline1')
        pwd()
        fileExists 'Jenkinsfile-pipeline1.1'
      }
    }
  }
}