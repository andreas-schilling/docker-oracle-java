FROM alexeiled/docker-oracle-xe-11g

MAINTAINER Andreas Schilling <andreas_schilling@gmx.net>

# Install java8
RUN apt-get update -y
RUN apt-get install python-software-properties -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update -y
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
