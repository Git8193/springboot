FROM openjdk:16-alpine3.13
LABEL Name = "Kutralalingam" 
COPY target/*.jar myapp.jar
ENTRYPOINT ["java" , "-jar" , "myapp.jar"]
