FROM ubuntu:18.04
EXPOSE 8080
ADD target/devops-integrations.jar devops-integrations.jar
ENTRYPOINT ["java","-jar","/devops-integrations.jar"]
