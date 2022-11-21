FROM ubuntu:20.04.5
EXPOSE 8080
ADD target/devops-integrations.jar devops-integrations.jar
ENTRYPOINT ["java","-jar","/devops-integrations.jar"]
