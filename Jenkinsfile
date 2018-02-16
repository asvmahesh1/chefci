pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/asvmahesh1/chefci.git', branch: 'master', credentialsId: '076e46f4-97e1-423f-bbb7-3dfa4cdda715', changelog: true, poll: true)
      }
    }
  }
}