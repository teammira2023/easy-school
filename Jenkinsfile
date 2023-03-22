#!/usr/bin/env groovy
pipeline {
  node('Dev') {
  stage('Build') {
    sh 'rm -rf easy-school/'
    sh 'git clone https://github.com/teammira2023/easy-school.git'
		sh 'chmod +x easy-school/runtime.sh'
    sh 'easy-school/runtime.sh'
      }
    post {
        always {
            // Set the result of the current build to SUCCESS
            currentBuild.result = 'SUCCESS'
        }
    }
    }
)
