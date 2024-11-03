# FROM tomcat:8

# Copy target/*.war /usr/local/tomcat/webapps/

# above is the old code

FROM alpine:latest
LABEL author="abcd@gmail.com"
LaBEL app="web"
RUN apk add openjdk17

WORKDIR /opt/
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz .
RUN tar xf apache-tomcat-9.0.96.tar.gz
RUN rm apache-tomcat-9.0.96.tar.gz
RUN mv apache-tomcat-9.0.96 tomcat9
Copy target/*.war /opt/tomcat9/webapps/
EXPOSE 8080
CMD ["/opt/tomcat9/bin/catalina.sh", "run"]