#! /bin/bash
#
# prog.sh --
#
set -u
source ../die/die.sh

progname=${0};
progdir=$(cd `dirname $0`; pwd);

function usage() {
    echo "Usage: ${progname} [-h|help|doit]";
    exit 0;
}

function save_pid() {
    PIDFILE=$(mktemp);
    info "TMPDIR=${TMPDIR}";
    info "PIDFILE=${PIDFILE}";
    echo $$ > "${PIDFILE}";
    cat "${PIDFILE}";
}

function sleep_30() {
    echo sleep 30;
    sleep 30 || error "sleep 30";
}

[ $# -eq 0 ] && usage;
case $1 in
-h|help) usage; ;;
doit)    ;;
*)       usage; ;;
esac

save_pid;  # TMPDIR にファイルを作る
sleep_30;  # sleep を待つ | sleep を kill | prog.shを kill 
