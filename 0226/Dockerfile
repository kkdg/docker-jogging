FROM centos:6

MAINTAINER degi.kwag@yg1.co.kr

RUN yum -y install git

RUN mkdir /root/.ssh/

ADD repo-key /root/.ssh/repo-key

# Create known_hosts
RUN touch /root/.ssh/known_hosts
# Add bitbuckets key
RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

RUN git clone git@bitbucket.org:degi-yg1/unicorn.git
