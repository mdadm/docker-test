# Version: 0.0.3
FROM ubuntu:16.04
MAINTAINER Aleksandr Kostarev <a.kostarev@xsolla.com>

RUN apt-get update
RUN apt-get install -y apt-utils git python python-pip virtualenv mc net-tools

# Make folder for project
RUN mkdir /home/projects
WORKDIR /home/projects/

# Clone projects on localhost
RUN git clone https://github.com/mdadm/cicd-buzz.git

WORKDIR /home/projects/cicd-buzz

## Create and start virtualenv
#RUN virtualenv venv
#RUN ["/bin/bash", "-c", "source venv/bin/activate"]

# Install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#RUN /usr/bin/python app.py

ENTRYPOINT ["/usr/bin/python"]
CMD ["app.py"]

EXPOSE 5000
