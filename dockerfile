FROM ubuntu
 
USER root
 
RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository ppa:ansible/ansible && \
  apt-get update && \
  apt install -y ansible curl vim tar
 
RUN mkdir /ansible
WORKDIR /ansible
