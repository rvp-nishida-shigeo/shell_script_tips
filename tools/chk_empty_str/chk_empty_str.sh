#! /bin/bash
set -u

progname=${0};
progdir=$(cd `dirname $0`; pwd);

function usage() {
    echo "Usage: ${progname} [-h|help|-c]  file";
    exit 0;
}

function __count_empty_string() {
    grep "' *'" $@ | wc -l
}

function __check_empty_string() {
    grep "' *'" $@
}

[ $# -eq 0 ] && usage;
case $1 in
    -h|help)   usage; ;;
    -c) shift; __count_empty_string $@; ;;
    *)         __check_empty_string $@; ;;
esac

