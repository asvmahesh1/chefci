pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/asvmahesh1/chefci.git', branch: 'master', credentialsId: '076e46f4-97e1-423f-bbb7-3dfa4cdda715', changelog: true, poll: true)
      }
    }
    stage('setup') {
      steps {
        sh '''        sh \'echo "Versions: "\'
        sh \'chef --version\'
        sh \'rubocop --version\'
        sh \'foodcritic --version\'
        sh \'echo "Updating Berkshelf: "\'
        sh \'if [ ! -f Berksfile.lock ]; then berks install; else berks update; fi; \'echo \'Building..\'
                sh \'bundle install\' // build cookbook with all dependencies 


'''
      }
    }
    stage('lint') {
      steps {
        echo 'Running lint tests'
        sh '''echo \'Testing..\'
                sh \'bundle exec rake rubocop\' // run rubocop
                sh \'bundle exec rake foodcritic\' // run foodcritic
                sh \'bundle exec rake unit\' // run ChefSpec tests 
'''
      }
    }
  }
}