FROM centos:6

MAINTAINER deck@bluewisesoft.com
#CMD "sh" "-c" "echo nameserver 8.8.8.8 > /etc/resolv.conf"

#RUN yum install -y curl; yum upgrade -y; yum update -y; yum clean all

##### Server Install #####
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
#RUN rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm

#RUN yum -y install php55w php55w-opcache
RUN yum -y install which openssh-server php-mysql php-gd php-mcrypt php-zip php-xml php-iconv php-curl php-soap hp-simplexml php-pdo php-dom php-cli php-fpm nginx php-mbstring

RUN yum -y install mysql

RUN yum -y install tar

ADD default.conf /etc/nginx/conf.d/default.conf

RUN chkconfig php-fpm on
RUN chkconfig nginx on

#RUN yum -y install git

##### Copying Magento zip file #####

RUN mkdir /var/www/
ADD magento.1922.tar.gz /tmp/magento.tar.gz
#RUN tar -xvfz /var/www/ee.tar.gz
RUN cp -R /tmp/magento.tar.gz/* /var/www 
##### Setting for Permission #####

#RUN ls -la 
#RUN whoami
#RUN cp -R /tmp/unicorn/* /var/www/
RUN cd /var/www/ && chmod -R o+w media && chmod o+w app/etc

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD start.sh /start.sh
#ADD install.sh /install.sh
ADD local.xml /var/www/app/etc/local.xml
RUN chmod 755 /start.sh /var/www/install.php

CMD /start.sh
