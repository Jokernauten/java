FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y maven npm git
RUN cd /root/ && git clone https://github.com/Jokernauten/react-java.git
WORKDIR /root/react-java
RUN mvn clean install
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080
