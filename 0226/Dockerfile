FROM centos:6

MAINTAINER degi.kwag@yg1.co.kr

##### Server Install #####
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release

RUN yum -y install which openssh-server php-mysql php-gd php-mcrypt php-zip php-xml php-iconv php-curl php-soap hp-simplexml php-pdo php-dom php-cli php-fpm nginx

RUN yum -y install mysql


##### Git Fetch from Target Repo #####

RUN yum -y install git

RUN mkdir /root/.ssh/

ADD repo-key /root/.ssh/repo-key

# Create known_hosts
#RUN touch /root/.ssh/known_hosts
# Add bitbuckets key
#RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts

ADD config /root/.ssh/config
RUN chmod 600 /root/.ssh/config

RUN cd /usr/share/nginx/html && git clone git@bitbucket.org:degi-yg1/unicorn.git
