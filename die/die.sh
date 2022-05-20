#! /bin/bash
function die() {
    local msg=${1}
    local status_code=${2-1} # 第二引数が指定されていなかったら 1
    echo "${msg}";
    exit ${status_code};
}

function error() {
    local msg=${1}
    local status_code=${2-1} # 第二引数が指定されていなかったら 1
    echo "ERROR: ${msg}";
    exit ${status_code};
}

function warn() {
    local msg=${1}
    echo "WARN: ${msg}";
}

function info() {
    local msg=${1}
    echo "INFO: ${msg}";
}

