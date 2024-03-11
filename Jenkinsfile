pipeline {
  agent {
    node {
      label 'workstation'
    }
  }
  stages {
    stage('Docker build') {
      steps {
        sh 'docker build -t docker.io/rkalluru/d77-schema-loader .'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push docker.io/rkalluru/d77-schema-loader'
      }
    }

  }
}

