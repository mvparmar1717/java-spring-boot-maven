FROM openjdk:12-alpine

MAINTAINER mvparmar1717@gmail.com

# copy war file on to container
COPY target/hello-world-spring-boot-pom-0.0.1-SNAPSHOT.jar /helloworld.jar

EXPOSE  8181

# Add none root user
#CMD useradd -m admin && echo "admin:admin" |  chpasswd &&  usermod -aG wheel  admin

WORKDIR /usr/local/

#CMD ["catalina.sh","run"]
CMD ["java" , "-jar, "/helloworld.jar]