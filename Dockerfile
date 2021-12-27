FROM openjdk:11
ADD ./webapp/target/webapp.war webapp.war
EXPOSE 8080
