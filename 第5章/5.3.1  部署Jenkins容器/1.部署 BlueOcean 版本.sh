$ mkdir -p /data/jenkins
$ docker run --name jenkins-blueocean -u root --rm  -d -p 8080:8080 -p 50000:50000 -v /data/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean
