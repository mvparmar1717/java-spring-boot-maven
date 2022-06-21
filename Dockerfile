FROM tomcat:8.0.51-jre8-alpine

MAINTAINER mvparmar1717@gmail.com

# copy war file on to container
COPY ./target/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps

EXPOSE  8080

USER hello-world-spring-boot-pom

WORKDIR /usr/local/tomcat/webapps

CMD ["catalina.sh","run"]