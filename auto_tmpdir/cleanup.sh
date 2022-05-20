#! /bin/bash
# 汎用クリーンナップシェルスクリプト(cleanup.sh)
$@ &   
TMPDIR=$(mktemp -d);
wait;
rm -rf "${TMPDIR}";
