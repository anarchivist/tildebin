#!/bin/bash

if [ $# -lt 1 ]
then
        echo "Usage : $0 <version | current>"
        exit
fi

case "$1" in

current) brew info sleuthkit | grep \\*$
    ;;
3.2.3)   brew switch sleuthkit 3.2.3
    brew link fiwalk
    ;;
4.0.0)   brew unlink fiwalk
    brew switch sleuthkit 4.0.0
    ;;
4.0.1)   brew unlink fiwalk
    brew switch sleuthkit 4.0.1
    ;;
# assumes HEAD is a27fd4b782a5a6d8c2e1525f5fdfb0df20291f1c or after
HEAD)    brew unlink fiwalk
    brew switch sleuthkit HEAD
    ;;

esac