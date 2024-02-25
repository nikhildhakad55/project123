FROM centos:latest
RUN yum install httpd -y
RUN systemctl enable --now httpd
RUN echo "HELLO-USER" > /var/www/html/index.html
RUN systemctl restart httpd
CMD  [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
THIS is a docker file
