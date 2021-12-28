FROM openjdk:11
ADD ./target/webapp.war webapp.war
EXPOSE 8080
