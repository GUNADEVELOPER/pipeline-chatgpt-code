pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-jenkins-credentials')
        AWS_SECRET_ACCESS_KEY = credentials('aws-jenkins-credentials1')
        TF_VAR_region         = 'ap-south-1'
        TF_VAR_ami            = 'ami-0d1e92463a5acf79d'
        TF_VAR_instance_type  = 't2.micro'
        TF_VAR_bucket_name    = 'example-bucket-5579'
    }

    stages {
            stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: 'main']],
                userRemoteConfigs: [[url: 'https://github.com/GUNADEVELOPER/pipeline-chatgpt-code.git']])
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply tfplan'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
