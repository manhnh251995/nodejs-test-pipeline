pipeline {
  agent none
  environment {
  IMAGE = "toja03"
  PASSWORD = credentials("docker-registry-pass")
  }
  stages {
    stage("Build Image") {
      agent { label 'master' }
      steps {
	sh'''
	echo "Build docker image"
        sh build.sh
        '''
      }
    }
    stage("PUSH NEW IMGAE TO REGISTRY"){
      agent { label 'master' }
      steps {
        sh'''
          echo "Push new image to registry"
          sh push_ECR.sh
        '''
      }
    }
    stage("DEPLOY to staging"){
      when {
        branch 'staging'
      }
      agent { label 'jenkin02' }
      steps {
        sh'''
          echo "Deploy to $BRANCH_NAME"
          sh deploy.sh
        '''
      }
    }
    stage("DEPLOY to PROD"){
      when {
        branch 'relese'
      }
      agent { label 'prod' }
      steps {
        sh'''
          echo "Deploy to $BRANCH_NAME"
          sh deploy.sh
        '''
      }
    }
  }
}
