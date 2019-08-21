FROM ubuntu:16.04
MAINTAINER Raiden Yu <raiden.yu@ge.com>
#Install Open JDK 8
RUN apt-get update \
    && apt-get -y install openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

VOLUME /tmp
ARG JAR_FILEgit
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

#sudo docker build . -t temp-repo/fargate-demo