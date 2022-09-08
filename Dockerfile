
FROM centos:7
RUN yum install epel-release vim net-tools wget sysstat stat psmisc utils.pm yum-utils -y
RUN yum update -y
RUN yum install nginx -y 
COPY /home/prashanthg/DockerProjects/My_notes/html /var/www/production/
COPY /home/prashanthg/DockerProjects/My_notes/html /etc/nginx/
RUN systemctl enable nginx

CMD ["/usr/sbin/init"]
