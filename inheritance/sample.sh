#! /bin/bash
set -u -e
source ../die/die.sh
source ../not_implimented/not_implimented.sh

progname=${0};
progdir=$(cd `dirname $0`; pwd);

function usage() {
    echo "Usage: ${progname} [-h|help|rectangle|square|traiangle] [name|draw|area] options...";
    exit 0;
}

[ $# -eq 0 ] && usage;
case $1 in
    -h|help) usage; ;;
    rectangle|square|triangle) source "./${1}.sh"; ;;
    *) error "unknown class ${1}"; ;;
esac

shift;
case $1 in
    name|draw|area)  ;;
    *) error "unknown command ${1}"; ;;
esac
$@
