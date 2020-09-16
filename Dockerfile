FROM openjdk
ADD target/users-0.0.1-SNAPSHOT.jar java.jar
RUN mvn clean install
CMD java -jar java.jar
EXPOSE 8080
