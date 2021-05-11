#!/bin/bash

# Change directory to the directory of the script
cd "$(dirname $0)" || exit

# unzip /home/ge0ffrey/projects/github/jbake/jbake-dist/build/distributions/jbake-*.zip -d ./local/jbake-dist

./local/jbake-dist/jbake-*-bin/bin/jbake -b
