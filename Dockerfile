FROM ubuntu:16.04
MAINTAINER Raiden Yu <raiden.yu@ge.com>
#Install Open JDK 8
RUN apt-get update \
&& apt-get -y install openjdk-8-jdk \

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

COPY ./target/fargatedemo-0.0.1-SNAPSHOT.jar /usr/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/usr/app.jar"]

#sudo docker build . -t temp-repo/fargate-demo
#add jenkins auto trigger