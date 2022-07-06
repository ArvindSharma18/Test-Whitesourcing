FROM centos:centos7.9.2009
RUN yum -y update && yum -y install httpd && yum clean all
COPY requirements.txt /app/requirements.txt
ENTRYPOINT ["ping"]
CMD ["google.com"]