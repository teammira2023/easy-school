pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
		sh 'git clone https://github.com/teammira2023/easy-school.git'
		sh 'chmod +x easy-school/runtime.sh'
        sh 'easy-school/runtime.sh'
      }
    }

  }
}
