#! /bin/bash
#
# rectangle.sh -- 長方形クラス
#

source ./figure.sh

class_name="長方形";

function area() {
    let _area=$1*$2;
    info "面積は ${_area} です"。
}
