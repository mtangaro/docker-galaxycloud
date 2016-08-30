FROM indigodatacloud/ubuntu-sshd:14.04

MAINTAINER ma.tangaro@gmail.com

ENV container docker

COPY ["requirements.yml","playbook.yaml","entrypoint.sh","/"]

RUN apt-get -y install software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get -y update && \
    apt-get -y install ansible sudo git

RUN ansible-galaxy install -r requirements.yml

RUN echo "localhost" > /etc/ansible/hosts

RUN ansible-playbook /playbook.yaml

EXPOSE 21 22 80

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/galaxy-startup","/usr/sbin/sshd", "-D"]
