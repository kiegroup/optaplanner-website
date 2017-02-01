#############################################################################
# Dockerfile publishes optaplanner-website and installs all required software
#############################################################################

####### BASE #################
FROM fedora:23

####### MAINTAINER ############
MAINTAINER "Michael Biarnes Kiefer <mbiarnes@redhat.com>"

### swith to root user ###
USER root

### install ruby and rake ###
RUN dnf install -y ruby
RUN dnf groupinstall -y development-tools
RUN dnf install -y rake
RUN dnf install -y ruby-devel
RUN dnf install -y libxslt-devel
RUN dnf install -y gcc-c++
RUN dnf install -y rubygem-nokogiri
RUN dnf install -y rubygem-bundler
RUN dnf install -y rpm-build
RUN dnf install -y net-tools
RUN dnf install -y iputils
RUN dnf clean all

RUN bash -l -c "gem install bundler awestruct:0.5.7 -N"

RUN useradd -m jenkins -u 1001 --shell /bin/bash

USER jenkins

WORKDIR /home/jenkins

ENV HOME /home/jenkins
ENV LANG en_US.UTF-8

EXPOSE 4242

CMD ["bash","--login", "rake"]