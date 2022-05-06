#! /bin/bash
set -u -e
source ../die/die.sh
source ../not_implimented/not_implimented.sh
source ./finally.sh

progname=${0};
progdir=$(cd `dirname $0`; pwd);

function usage() {
    echo "Usage: ${progname} commmand options...";
    exit 0;
}

function finally_block() {
    called;
}

[ $# -eq 0 ] && usage;
case $1 in
    -h|help) usage; ;;
esac

finally $@;
