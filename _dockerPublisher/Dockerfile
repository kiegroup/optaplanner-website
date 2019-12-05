#############################################################################
# Dockerfile publishes optaplanner-website and installs all required software
#############################################################################

####### BASE #################
FROM fedora:27

####### MAINTAINER ############
MAINTAINER "Michael Biarnes Kiefer <mbiarnes@redhat.com>"

### swith to root user ###
USER root

### install ruby and rake ###
RUN dnf install -y ruby
RUN dnf install -y rubygems
RUN dnf install -y rubygem-rake
RUN dnf install -y rubygem-bundler
RUN dnf install -y ruby-devel
RUN dnf install -y rpm-build
RUN dnf install -y gcc-c++
RUN dnf install -y make
RUN dnf install -y rsync
RUN dnf install -y openssh-clients
RUN dnf install -y net-tools
RUN dnf install -y iputils
RUN dnf install -y wget
RUN dnf clean all

RUN bash -l -c "gem install bundler awestruct"

RUN useradd -m jenkins -u 1001 --shell /bin/bash

USER jenkins

WORKDIR /home/jenkins

RUN wget https://github.com/kiegroup/optaplanner-website/archive/master.zip
RUN unzip master.zip

ENV HOME /home/jenkins
ENV LANG en_US.UTF-8

EXPOSE 4242

CMD ["bash","--login", "rake"]
