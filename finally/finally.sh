#! /bin/bash
function finally_block() { not_implimented; }

function finally() {
    $@ &
    PID="$!";
    wait;
    finally_block;
}
