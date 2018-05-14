FROM centos:latest

# pip upgrade the result of a problem with current version of aws cli v1.14
# # https://github.com/aws/aws-cli/issues/3006
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install fuse-sshfs openssh-clients python-pip && \
    yum -y update && \
    pip install awscli && \
    pip install --upgrade s3transfer && \
    yum clean all

COPY userdata.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/userdata.sh