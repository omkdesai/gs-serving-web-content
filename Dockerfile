FROM ubuntu:latest
VOLUME /tmp
RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD target/*.jar spring-mvc-example.jar

EXPOSE 8080

CMD java -jar spring-mvc-example.jar
