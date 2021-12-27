FROM openjdk:11
ADD ./webapp.war webapp.war
EXPOSE 8080
