#! /bin/bash
#
# triangle.sh -- 三角形クラス
#

source ./figure.sh

class_name="三角形";

function area() {
    let _area=$1*$2/2;
    info "面積は ${_area} です"。
}
