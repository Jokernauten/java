FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y maven
#git
RUN cd /root/
#&& git clone https://github.com/Jokernauten/react-java.git
WORKDIR /var/lib/jenkins/workspace/java
RUN mvn clean install
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080
