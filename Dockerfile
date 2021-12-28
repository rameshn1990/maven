FROM openjdk:11
ADD ./practice-pl/webapp/target/webapp.war webapp.war
EXPOSE 8080
