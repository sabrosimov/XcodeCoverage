#!/bin/sh
#
#   Copyright 2014 Jonathan M. Reid. See LICENSE.txt
#   Created by: Jon Reid, http://qualitycoding.org/
#   Source: https://github.com/jonreid/XcodeCoverage
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


if [ "$1" = "-v" ]; then
    echo "llvm-cov-wrapper 4.2.1"
    exit 0
elif [ "`echo $* | egrep -w 'AppDelegate|SupervisorAPIConnector'`" ] ; then
    ${DIR}/cla-wrapper.py /usr/bin/gcov-4.2 $*
else
    ${DIR}/cla-wrapper.py /usr/bin/gcov $*
fi
