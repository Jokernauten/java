FROM maven
ADD . /root/java/
WORKDIR /root/java
RUN mvn clean install
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080

