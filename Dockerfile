FROM ubuntu
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install -y maven git
#RUN cd /root/ && git clone https://github.com/Jokernauten/java.git
#WORKDIR /root/java
RUN cd ..
ADD java /root/
WORKDIR /root/java
RUN mvn clean install
ADD target/users-0.0.1-SNAPSHOT.jar users-0.0.1-SNAPSHOT.jar
CMD java -jar target/users-0.0.1-SNAPSHOT.jar
EXPOSE 8080

