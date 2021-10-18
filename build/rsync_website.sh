#!/bin/bash
#############################################################################################################################################################################
#
#   You can't execute this script locally since keys, stored in Jenkins, are needed
#   1. you need to store the id_rsa and known_host file on your local
#   (for these pwd ask mbiarnes or geoffrey)
#   2. create a optaplanner directory underneath $HOME/.ssh to store the needed keys ($HOME/.ssh/optaplanner)
#   3. copy known_hosts and id_rsa (the same as on Jenkins) to $HOME/.ssh/optaplanner
#   Then you should use:
#   rsync --dry-run -Pavqr -e "ssh -i $HOME/.ssh/optaplanner/id_rsa" --protocol=28 --delete-after target/website/* optaplanner@filemgmt.jboss.org:www_htdocs/optaplanner
#   the --dry-run is for testing so you can see if anything is missing. The files are not synced! If you want to execute a "real" rsync please remove --dry-run
#
#############################################################################################################################################################################

rsync -Pavqr --protocol=28 --delete-after optaplanner-website-assembly/target/website-complete/* optaplanner@filemgmt.jboss.org:www_htdocs/optaplanner