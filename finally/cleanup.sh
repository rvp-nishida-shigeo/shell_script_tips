#! /bin/bash
# 汎用クリーンナップシェルスクリプト(cleanup.sh)
$@ &   
PID="$!";
TMPDIR="/tmp/${PID}";
wait;
rm -rf "${TMPDIR}";
