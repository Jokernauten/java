FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y maven
ADD /var/lib/jenkins/workspace/java /root/
#&& git clone https://github.com/Jokernauten/react-java.git
WORKDIR /root
RUN mvn clean install
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080
