# 基础镜像
FROM openjdk:16.0-jdk-buster 
# VOLUME 指定了临时的日志或者数据目录
VOLUME /tmp 
VOLUME /log 
# 将 JAR 包添加到容器中，并更名为 module-name.jar 
ADD target/demo-0.0.1-SNAPSHOT.jar module-name.jar 
EXPOSE 8080 
# 运行 JAR 包
ENTRYPOINT ["java","-jar","/module-name.jar"]