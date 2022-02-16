FROM openjdk:11
RUN cd /
ADD ["springboot-0.0.1-SNAPSHOT.jar", "/app/app.jar"]
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]


