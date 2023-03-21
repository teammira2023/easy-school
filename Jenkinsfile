pipeline {
  agent any
  stages {
    stage('Code Quality Check') {
      steps {
        sh 'cd /home/ubuntu'
        sh 'rm -rf easy-school/'
        sh 'git clone https://github.com/teammira2023/easy-school.git'
        sh 'chmod +x easy-school/runtime.sh'
        sh 'easy-school/runtime.sh'
        sh '''sonar-scanner \\
  -Dsonar.projectKey=easy-school \\
  -Dsonar.sources=. \\
  -Dsonar.host.url=http://52.206.217.129:9000 \\
  -Dsonar.login=sqp_678a72dfc1ffc68c9a089d16ac4313bb7028ea44'''
      }
    }

  }
}