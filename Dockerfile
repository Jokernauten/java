FROM openjdk
COPY /target/users-0.0.1-SNAPSHOT.jar users-0.0.1-SNAPSHOT.jar
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080v
