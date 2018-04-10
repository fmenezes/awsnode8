FROM amazonlinux:latest

RUN yum update -y
RUN yum groupinstall 'Development Tools' -y
RUN curl -O https://rpm.nodesource.com/pub_8.x/el/7/x86_64/nodejs-8.10.0-1nodesource.x86_64.rpm
RUN rpm -i --nosignature --force nodejs-8.10.0-1nodesource.x86_64.rpm
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli
RUN rm get-pip.py nodejs-8.10.0-1nodesource.x86_64.rpm
