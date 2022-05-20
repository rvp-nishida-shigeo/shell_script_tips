#! /bin/bash
set -u
source ./auto_tmpdir.sh

progname=${0};
progdir=$(cd `dirname $0`; pwd);

function usage() {
    echo "Usage: ${progname} [-h|help|doit]";
    exit 0;
}

[ $# -eq 0 ] && usage;
case $1 in
    -h|help) usage; ;;
esac

auto_tmpdir ./prog.sh doit ;
