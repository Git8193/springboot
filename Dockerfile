FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN git config --global user.name "Git8193"
RUN git config --global user.mail "kutralalingam81@gmail.com"


FROM myimg AS clone
RUN git clone https://github.com/Git8193/springboot.git
ENV DEBIAN_FRONTEND noninteractive

FROM maven:3.8-openjdk-11 AS maven_build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

