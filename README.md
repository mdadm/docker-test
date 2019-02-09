# docker-test
Test task with docker

# What should be done?

* Start test Flask-project in docker
 
# Notes

* We should create Docker-file, which will create Docker-image.
* We should pack Ubuntu in Docker-image, clone test Flas-app and create a working environment.
* After that, we need to start the docker-container with the ability to connect from localhost.

# Installation and launch

1. Install Docker:
    * For MacOS: brew cask install docker
    * For Ubuntu/Debian: sudo apt-get install docker
    
2. Clone the repository docker-test:
    * git clone https://github.com/mdadm/docker-test.git

3. Run from docker-test directory:
    * cd docker-test
    * docker build -t cicd-buzz .
    * docker run -d -p 5000:5000 cicd-buzz
    
These commands will assemble the docker image cicd-buzz and launch the container in which the application will be launched. The result can be viewed in the browser at http://localhost:5000