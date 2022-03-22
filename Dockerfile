FROM openjdk:16-alpine3.13
LABEL Name = "Kutralalingam" 
COPY target/*.jar myapp
ENTRYPOINT ["java" , "-jar" , "myapp"]
