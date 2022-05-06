#! /bin/bash
set -u -e 
source ./abstract_case.sh

function foo() {
    local funcname="${FUNCNAME[0]}";
    echo "${funcname} called.";
    return 0;
}

function bar() {
    local funcname="${FUNCNAME[0]}";
    echo "${funcname} called.";
    return 0;
}

function baz() {
    local funcname="${FUNCNAME[0]}";
    echo "${funcname} called.";
    return 0;
}

template_func $@;
