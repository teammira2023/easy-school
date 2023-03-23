#!/usr/bin/env groovy
pipeline {
   agent {
    node {
      label 'Dev'
    }

  }
stages {
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

