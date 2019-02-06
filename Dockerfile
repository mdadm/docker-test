# Version: 0.0.1
FROM ubuntu:16.04
MAINTAINER Aleksandr Kostarev <a.kostarev@xsolla.com>
RUN apt update && apt upgrade -y
RUN apt install -y git python python-pip virtualenv mc
RUN mkdir -p /home/projects/
RUN cd /home/projects/
RUN git clone https://github.com/mdadm/cicd-buzz.git
RUN cd cicd-buzz
RUN ls -l
RUN virtualenv venv
RUN . venv/bin/activate
RUN pip install --upgrade pip
RUN ls -l
RUN pip install -r /home/projects/cicd-buzz/requirements.txt

ENTRYPOINT ['python']
CMD ['app.py']

EXPOSE 5000
