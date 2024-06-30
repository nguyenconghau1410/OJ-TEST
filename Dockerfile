FROM openjdk:17-jdk-buster

WORKDIR /app

#RUN apt-get update && apt-get install -y python3 g++ gcc && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN rm -rf /var/lib/apt/lists/*

COPY ./target/oj-0.0.1-SNAPSHOT.jar ./oj-0.0.1-SNAPSHOT.jar
COPY ./testcase /app/testcase
EXPOSE 8080


ENTRYPOINT ["java", "-jar", "oj-0.0.1-SNAPSHOT.jar"]