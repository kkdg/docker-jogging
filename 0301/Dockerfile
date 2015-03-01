FROM centos:6

MAINTAINER degi.kwag@yg1.co.kr

##### Server Install #####
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum -y install which openssh-server php-mysql php-gd php-mcrypt php-zip php-xml php-iconv php-curl php-soap hp-simplexml php-pdo php-dom php-cli php-fpm nginx

RUN yum -y install mysql

ADD default.conf /etc/nginx/conf.d/default.conf

<<<<<<< HEAD
=======
RUN service nginx start
RUN service php-fpm start

>>>>>>> 63aa0969e79c2b39aa6827ee5a0effe79cfdc448
RUN chkconfig php-fpm on
RUN chkconfig nginx on

##### Git Fetch from Target Repo #####

RUN yum -y install git

RUN mkdir /root/.ssh/

ADD repo-key /root/.ssh/repo-key

ADD config /root/.ssh/config
RUN chmod 600 /root/.ssh/config

RUN cd /tmp && git clone git@bitbucket.org:degi-yg1/unicorn.git
<<<<<<< HEAD
=======

##### Setting for Permission #####

RUN ls -la 
RUN whoami
RUN mkdir /var/www &&  cp -R /tmp/unicorn/* /var/www/
#RUN cd /var/www/ && chmod -R o+w media var && chmod o+w app/etc


>>>>>>> 63aa0969e79c2b39aa6827ee5a0effe79cfdc448
