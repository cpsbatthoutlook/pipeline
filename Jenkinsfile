pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        sh 'echo "Ist stage"'
        timeout(time: 10, activity: true)
        sleep 6
        git(url: 'https://github.com/cpsbatthoutlook/pipeline.git', branch: 'pipeline1')
        pwd()
        fileExists 'Jenkinsfile-pipeline1.1'
      }
    }
  }
}