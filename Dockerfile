FROM openjdk:12-alpine

MAINTAINER mvparmar1717@gmail.com

# copy jar file on to container
COPY target/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar /demo.jar

CMD ["java" , "-jar", "/demo.jar"]