FROM mtangaro/docker-centos-epel
#FROM centos:7.4.1708

MAINTAINER ma.tangaro@ibiom.cnr.it

ENV container docker

#COPY ["playbook.yaml","entrypoint.sh","/"] # only for developemnt
COPY ["playbook.yaml","/"]

RUN ansible-galaxy install indigo-dc.galaxycloud

RUN echo "localhost" > /etc/ansible/hosts

RUN ansible-playbook /playbook.yaml

EXPOSE 21 80

#ENTRYPOINT ["/entrypoint.sh"] # only for development

CMD /etc/init.d/vmcontext start; /usr/bin/galaxy-startup
