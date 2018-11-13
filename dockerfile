FROM ubuntu
 
USER root
 
RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y --force-yes ansible \
  apt-get install -y curl && \
    openssh-client && \
    python && \
    py-boto && \
    py-dateutil && \
    py-httplib2 && \
    py-jinja2 && \
    py-paramiko && \
    py-pip && \
    py-setuptools && \
    py-yaml && \
    tar
 
RUN mkdir /ansible
WORKDIR /ansible
