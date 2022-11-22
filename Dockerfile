FROM busybox
EXPOSE 8080
ADD target/devops-deployment.jar devops-deployment.jar
ENTRYPOINT ["java","-jar","/devops-deployment.jar"]
