#!/bin/bash

# Make folder for project
mkdir /home/projects
cd /home/projects

# Clone projects on localhost
git clone https://github.com/mdadm/cicd-buzz.git
cd cicd-buzz

# Create and start virtualenv
virtualenv venv
source venv/bin/activate

# Install requirements
pip install --upgrade pip
pip install -r /home/projects/cicd-buzz/requirements.txt
