pipeline {
  agent any
  stages {
    stage('Build Image') {
      steps {
        sh '''docker build -t registry-vpc.cn-beijing.aliyuncs.com/micro-java/$PROJECT .
'''
      }
    }
    stage('Push Image') {
      steps {
        sh 'docker push registry-vpc.cn-beijing.aliyuncs.com/micro-java/$PROJECT'
      }
    }
    stage('Deploy') {
      steps {
        sh '''ansible-playbook /etc/ansible/playbooks/nodejs-deploy.yaml \\
--extra-vars project=$PROJECT'''
      }
    }
  }
  environment {
    PROJECT = 'micro-node-douyin'
  }
}