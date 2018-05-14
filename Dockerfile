FROM centos:latest

RUN yum -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install awscli fuse-sshfs openssh-clients && \
    yum -y update && \
    yum clean all