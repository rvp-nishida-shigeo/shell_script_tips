#! /bin/bash
set -u -e 
source ./abstract_case.sh

function foo() {
    let val=${1}+1;
    echo "${1} + 1 = ${val}";
    return 0;
}

function bar() {
    let val=${1}*2;
    echo "${1} * 2 = ${val}";
    return 0;
}

function baz() {
    let val=${1}*${1};
    echo "${1} * ${1} = ${val}";
    return 0;
}

if [ $# -ne 1 ]; then
    echo "Usage: $0 num";
    exit 0;
fi

base_func $@;
