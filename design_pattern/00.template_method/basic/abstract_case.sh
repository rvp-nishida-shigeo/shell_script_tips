#! /bin/bash
set -u -e

function error_not_implimented() {
    local funcname="${FUNCNAME[1]}";
    echo "ERRPR: ${funcname} is not implimented." 1>&2;
    return 0;
}

function foo() { error_not_implimented; }

function bar() { error_not_implimented; }

function baz() { error_not_implimented; }


function base_func() {
    foo $@ || exit 1;
    bar $@ || exit 1;
    baz $@ || exit 1;
}

