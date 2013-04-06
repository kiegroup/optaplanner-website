Developing Drools and jBPM
==========================

**If you want to build or contribute to a droolsjbpm project, [read this document](https://github.com/droolsjbpm/droolsjbpm-build-bootstrap/blob/master/README.md).**

**It will save you and us a lot of time by setting up your development environment correctly.**
It solves all known pitfalls that can disrupt your development.
It also describes all guidelines, tips and tricks.
If you want your pull requests (or patches) to be merged into master, please respect those guidelines.

# How to build with Awestruct

        $ sudo gem install awestruct
        $ sudo apt-get install ruby-bundle
        $ sudo apt-get install ruby-nokogiri
        $ sudo apt-get install yard
        $ ./build.sh clean build
        $ firefox _site/index.html
