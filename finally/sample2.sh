#! /bin/bash
set -u -e
source ../die/die.sh
source ../not_implimented/not_implimented.sh
source ./finally.sh

progname=${0};
progdir=$(cd `dirname $0`; pwd);
TMPDIR=$(mktemp -d);

function usage() {
    echo "Usage: ${progname} [-h|help|doit]";
    exit 0;
}

function finally_block() {
    rm -rf "${TMPDIR}";
    info "Removed TMPDIR(${TMPDIR})";
}

[ $# -eq 0 ] && usage;
case $1 in
    -h|help) usage; ;;
esac

finally ./foo.sh;
