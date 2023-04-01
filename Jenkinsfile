pipeline {
  agent {
    node {
      label 'dev'
    }

  }
  stages {
    stage('Code Quality Check') {
      steps {
        sh '''sonar-scanner \\
  -Dsonar.projectKey=easy-school \\
  -Dsonar.sources=. \\
  -Dsonar.host.url=http://34.202.247.19:9000 \\
  -Dsonar.login=sqp_e3f73b535e45791102275d34540a67b0459f7e42'''
      }
    }

    stage('Build') {
      steps {
        sh 'rm -rf easy-school/'
        sh 'git clone https://github.com/teammira2023/easy-school.git'
        sh 'chmod +x easy-school/runtime.sh'
        sh 'easy-school/runtime.sh'
      }
    }

  }
}