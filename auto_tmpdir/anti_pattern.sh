#! /bin/bash
# アンチパターン
set -u 

source ../die/die.sh

TMPDIR=$(mktemp -d);
PIDFILE=$(mktemp);
info "TMPDIR=${TMPDIR}";
info "PIDFILE=${PIDFILE}";

echo sleep 1;
sleep 1;
retval=$?
if [ $retval -ne 0 ]; then
    rm -rf "${TMPDIR}";
    error "sleep 1";
fi

echo sleep 5;
sleep 5;
retval=$?
if [ $retval -ne 0 ]; then
    rm -rf "${TMPDIR}";
    error "sleep 5";
fi
echo sleep 30;
sleep 30;
retval=$?
if [ $retval -ne 0 ]; then
    ## TMPDIR 削除忘れ
    ## sleep が kill されたとき TMPDIR が残る
    error "sleep 30";
fi

info "正常終了"
rm -rf "${TMPDIR}";
