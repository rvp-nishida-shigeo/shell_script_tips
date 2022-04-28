#! /bin/bash
set -eu

function die() {
    local msg=${1}
    local status_code=${2-1}
    echo "${msg}";
    exit ${status_code};
}

#false || die "error!" ;
false || \
    die "error!" 128;

false;
if [ $? -ne 0 ]; then
    die "error!" 255;
fi

