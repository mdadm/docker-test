# Version: 0.0.2
FROM ubuntu:16.04
MAINTAINER Aleksandr Kostarev <a.kostarev@xsolla.com>
RUN apt-get update
RUN apt-get install -y apt-utils git python python-pip virtualenv mc

COPY setup.sh /home
RUN ["chmod", "+x", "/home/setup.sh"]
RUN /home/setup.sh

WORKDIR ['/home/project/cicd-buzz']
ENTRYPOINT [ "/usr/bin/python", "/home/project/cicd-buzz/app.py"]

EXPOSE 5000
