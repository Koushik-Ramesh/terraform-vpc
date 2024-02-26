pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select your Environment')
    }
    stages {
        stage('Terraform init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh "terraform apply -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
    }
}