#! /bin/bash
set -u -e 
source ./abstract_case.sh

function called() {
    local funcname="${FUNCNAME[1]}";
    echo "INFO: called ${funcname} ";
    return 0;
}

function foo() { called; }

function bar() { called; }

function baz() { called; }


base_func;
