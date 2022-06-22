FROM openjdk:12-alpine

MAINTAINER mvparmar1717@gmail.com

# copy Jar file on to container
COPY target/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar /hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar

EXPOSE  8080

# Add none root user
#CMD useradd -m admin && echo "admin:admin" |  chpasswd &&  usermod -aG wheel  admin

#WORKDIR /usr/local/tomcat/webapps

CMD ["java" , "-jar, "/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar"]
#CMD ["catalina.sh","run"]
