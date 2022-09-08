
FROM centos:7
RUN yum install epel-release -y
RUN yun install nginx -y 
RUN mkdir /var/www/production/
COPY /var/lib/jenkins/workspace/My_notes/My_notes/html /var/www/production/
COPY /var/lib/jenkins/workspace/My_notes/My_notes/webserver /etc/nginx/
RUN systemctl enable nginx

CMD ["/usr/sbin/init"]
