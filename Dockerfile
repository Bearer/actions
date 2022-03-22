FROM ubuntu:latest

ARG VERSION=latest

RUN apt-get update && apt-get -y install curl unzip git

RUN echo "using version ${VERSION}"

RUN mkdir /app

RUN curl https://bearer-cli-binaries.s3.eu-west-1.amazonaws.com/${VERSION}/bearer-broker_linux_amd64.zip --output /app/bearer.zip

WORKDIR /app

RUN unzip /app/bearer.zip

ADD ./entrypoint.sh /app/entrypoint.sh

RUN chmod u+x -R /app

ENTRYPOINT ["/app/entrypoint.sh" ]
