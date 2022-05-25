FROM ubuntu:latest

RUN apt-get update && \
  apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:git-core/ppa && \
  apt-get -y install curl unzip git

ADD ./entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh" ]
