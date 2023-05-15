pipeline {
    agent any
    environment {
        GITURL = "https://gitee.com/e7book/go-app.git"
    }
    stages {
        stage('CheckOut') {
            steps {
                script {
                    try {
                        git branch: 'master', url: env.GITURL
                    }
                    catch (exc) {
                        echo "CheckOut 失败"
                        sh 'exit 1'
                    }
                }
            }
        }
        stage('build') {
            steps {
                script {
                    try {
                        sh 'docker login 172.16.220.132 -u admin -p Harbor12345'
                        sh 'docker build -t 172.16.220.132/go/app:latest -f Dockerfile .'
                        sh 'docker push 172.16.220.132/go/app:latest'   
                    }
                    catch(exc) {
                        echo exc;
                        echo "build 失败"
                    }
                }
            }
        }
    }
}