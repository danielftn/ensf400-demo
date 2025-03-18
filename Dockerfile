# Dockerfile for the demo application
FROM tomcat:9.0-jdk11

WORKDIR /usr/local/tomcat/webapps/
COPY build/libs/*.war demo.war

EXPOSE 8080
CMD ["catalina.sh", "run"]