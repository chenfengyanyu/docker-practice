FROM java:8 
VOLUME /tmp 
add dubbo-admin-0.0.1-SNAPSHOT.jar dubbo.jar 
#命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/dubbo.jar"]