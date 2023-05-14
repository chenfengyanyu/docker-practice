pipeline {
            agent {
        kubernetes {
            cloud 'e7book-kubernetes'
            label 'jenkins-slave'
            defaultContainer 'jnlp'
            yaml """
                apiVersion: v1
                kind: Pod
                metadata:
                    labels:
                        app: jenkins-slave
                        app: slave
                spec:
                    containers:
                    - name: jnlp
                      image: cicd_slave:v1.10-ansible
                      imagePullPolicy: Always
                      args: ['\$(JENKINS_SECRET)', '\$(JENKINS_NAME)']
                    - name: nodejs
                      image::1.0
                      imagePullPolicy: Always
                      command:
                      - cat
                      tty: true
                      volumeMounts:
                      - mountPath: /root/.npm/
                        name: npm-cache
                      - mountPath: /var/run/docker.sock
                        name: docker-socket-volume
                    - name: docker
                      image: docker:19.03.7
                      command:
                      - cat
                      tty: true
                      volumeMounts:
                      - mountPath: /var/run/docker.sock
                        name: docker-socket-volume
                      securityContext:
                        privileged: true
                    - name: kubectl
                      image: kubeclient:1.17.3
                      command:
                      - cat
                      tty: true
                    restartPolicy: Never
                    volumes:
                    - name: npm-cache
                      persistentVolumeClaim:
                        claimName: npm-cache
                    - name: docker-socket-volume
                      hostPath:
                        path: /var/run/docker.sock
                        type: File
"""
        }
    }
    …
}
