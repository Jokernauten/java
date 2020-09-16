FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y maven
ADD target/users-0.0.1-SNAPSHOT.jar java.jar
CMD java -jar java.jar
EXPOSE 8080

