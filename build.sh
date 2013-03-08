#!/bin/sh

while [ $# -gt 0 ] ; do
    case $1 in
    --help) helpEnabled="true" ; shift 1 ;;
    clean) cleanEnabled="true" ; shift 1 ;;
    build) buildEnabled="true" ; shift 1 ;;
    publish) buildEnabled="true" ; publishEnabled="true" ; shift 1 ;;
    *) shift 1 ;;
    esac
done

if [ "${helpEnabled}" = "true" ]; then
	echo "Options:"
	echo "  --help this help message"
	echo "  clean - Delete generated files"
	echo "  build - Build website"
	echo "  publish - Publish to optaplanner.org"
	echo "In development, just use \"awestract -d\""
	exit 0;
fi

# Change directory to the directory of the script
cd `dirname $0`
siteDir="`pwd -P`/_site"

if [ "${cleanEnabled}" = "true" ]; then
	echo "Cleaning ${siteDir}"
    rm -Rf ${siteDir}
fi

if [ "${buildEnabled}" = "true" ]; then
	echo "Building ${siteDir}"
    awestruct --profile production
fi

if [ "${publishEnabled}" = "true" ]; then
	echo "Deploying ${siteDir}"
    # TODO
fi
