FROM      ubuntu:14.04
MAINTAINER      Senthil Kumar
# Update ubuntu and download dependencies
RUN apt-get -y update
RUN apt-get -y install curl 
RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.0.11/etcd-v2.0.11-linux-amd64.tar.gz -o /etcd-v2.0.11-linux-amd64.tar.gz
RUN tar xzvf /etcd-v2.0.11-linux-amd64.tar.gz
WORKDIR /etcd-v2.0.11-linux-amd64
RUN cd /etcd-v2.0.11-linux-amd64
RUN cp etcd* /usr/local/bin/
EXPOSE 4001 2380 2379 
