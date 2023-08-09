FROM centos:7
RUN yum install epel-release vim net-tools wget sysstat stat psmisc utils.pm yum-utils -y
RUN yum update -y
RUN yum install nginx -y 
#COPY ./html /var/www/production/
#COPY ./webserver /etc/nginx/
RUN systemctl enable nginx

CMD ["/usr/sbin/init"]
