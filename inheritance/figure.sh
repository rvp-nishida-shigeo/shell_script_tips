#! /bin/bash
#
# figure.sh -- 図形クラス
#

class_name="図形";

function name() {
    info "クラス名は ${class_name} です。";
}

function draw() {
    info "${class_name} を描いた！";
}

function area() {
    not_implimented;
}
