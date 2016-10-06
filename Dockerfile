FROM centos:centos6

MAINTAINER juriem1974@gmail.com

# enable EPEL for Node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# install node
RUN yum install npm

# copy app to /src
COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js
