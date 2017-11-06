FROM maven:3.5-jdk-8-alpine

RUN apk add --no-cache git docker

# Test 
RUN mvn --version
RUN java -version
RUN git version

RUN mkdir /.docker && chmod 777 /.docker
RUN rm -fr /var/lib/apt/lists/*

# Create working directory
RUN mkdir -p /local/git
WORKDIR /local/git
CMD [ "/bin/bash", "-l"]