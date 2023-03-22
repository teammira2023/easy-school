pipeline {
  agent {
    node {
      label 'test'
    }

  }
  stages {
    stage('Code Quality Check') {
      steps {
        sh '''sonar-scanner \\
  -Dsonar.projectKey=easy-school \\
  -Dsonar.sources=. \\
  -Dsonar.host.url=http://52.206.217.129:9000 \\
  -Dsonar.login=sqp_678a72dfc1ffc68c9a089d16ac4313bb7028ea44'''
      }
    }

  }
}