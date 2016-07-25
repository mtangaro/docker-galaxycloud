FROM indigodatacloud/centos-sshd:7

MAINTAINER ma.tangaro@gmail.com

ENV container docker

COPY ["playbook.yaml","entrypoint.sh","/"]

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install sudo ansible git

RUN ansible-galaxy install indigo-dc.galaxycloud

RUN echo "localhost" > /etc/ansible/hosts

RUN ansible-playbook /playbook.yaml

EXPOSE 21 22 80

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/supervisord","/usr/sbin/sshd", "-D"]