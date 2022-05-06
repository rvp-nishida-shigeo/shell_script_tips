#! /bin/bash
function not_implimented() {
    local funcname="${FUNCNAME[1]}";
    echo "ERRPR: ${funcname} is not implimented." 1>&2;
    return 0;
}

function called() {
    local funcname="${FUNCNAME[1]}";
    echo "called ${funcname}." 1>&2;
    return 0;
}
