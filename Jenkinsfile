pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
		sh 'cd /home/ubuntu'
		sh 'rm -rf easy-school/'
		sh 'git clone https://github.com/teammira2023/easy-school.git'
		sh 'chmod +x easy-school/runtime.sh'
        sh 'easy-school/runtime.sh'
      }
    }
  }
}
