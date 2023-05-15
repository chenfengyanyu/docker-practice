pipeline {
    agent any
    environment {
        GITURL = "https://gitee.com/e7book/go-app.git"
    }
    stages {
        stage('deploy') {
            steps {
                script {
                    try {
                        sh 'docker login 172.16.220.132 -u admin -p Harbor12345'
                        sh 'docker pull 172.16.220.132/go/app:latest'
                        sh 'docker rm -f app'
                        sh 'docker run -dit --name app 172.16.220.132/go/app:latest'  
                    }
                    catch(exc) {
                        echo exc;
                        echo "deploy 失败"
                    }
                }
            }
        }
    }
}
