#! /bin/bash
source ../not_implimented/not_implimented.sh

function __create_tmpdir() {
    called;
    TMPDIR=$(mktemp -d);
}

function __rm_tmpdir() {
    called;
    rm -rf "${TMPDIR}";
}

function auto_tmpdir() {
    __create_tmpdir;
    export TMPDIR;
    $@;
    retval=$?;
    __rm_tmpdir;
    return $retval;
}
