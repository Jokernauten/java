FROM openjdk
RUN mvn clean install
ADD target/users-0.0.1-SNAPSHOT.jar java.jar
CMD java -jar java.jar
EXPOSE 8080
