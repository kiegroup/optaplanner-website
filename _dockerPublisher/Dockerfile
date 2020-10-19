#############################################################################
# Dockerfile publishes optaplanner-website and installs all required software
#############################################################################

####### BASE #################
FROM fedora:31

####### MAINTAINER ############
MAINTAINER "Michael Biarnes Kiefer <mbiarnes@redhat.com>"

### swith to root user ###
USER root

### Install ruby dependencies
RUN dnf install -y ruby rubygems rubygem-rake rubygem-bundler ruby-devel \
## Install tools \
    rpm-build gcc-c++ make rsync openssh-clients net-tools iputils wget

RUN dnf clean all

RUN bash -l -c "gem install bundler awestruct"

RUN useradd -m jenkins -u 1000 --shell /bin/bash
RUN usermod -a -G wheel jenkins

#change permissions in sudoers
RUN sed -i 's/# %wheel	ALL=(ALL)	NOPASSWD: ALL/%wheel	ALL=(ALL)	NOPASSWD: ALL/g' /etc/sudoers

USER jenkins

WORKDIR /home/jenkins

RUN mkdir /home/jenkins/.ssh
RUN wget https://github.com/kiegroup/optaplanner-website/archive/master.zip
RUN unzip master.zip

ENV HOME /home/jenkins
ENV LANG en_US.UTF-8

EXPOSE 4242

CMD ["bash","--login", "rake"]
