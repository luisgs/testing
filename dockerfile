FROM ubuntu
 
USER root
 
RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y --force-yes ansible && \
  apt-get install -y --force-yes curl && \
  apt-get install -y --force-yes openssh-client && \
  apt-get install -y --force-yes python && \
  apt-get install -y --force-yes py-boto && \
  apt-get install -y --force-yes py-dateutil && \
  apt-get install -y --force-yes py-httplib2 && \
  apt-get install -y --force-yes py-jinja2 && \
  apt-get install -y --force-yes py-paramiko && \
  apt-get install -y --force-yes py-pip && \
  apt-get install -y --force-yes py-setuptools && \
  apt-get install -y --force-yes py-yaml && \
  apt-get install -y --force-yes tar
 
RUN mkdir /ansible
WORKDIR /ansible
