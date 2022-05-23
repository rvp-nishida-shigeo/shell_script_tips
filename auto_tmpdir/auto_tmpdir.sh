#! /bin/bash
source ../not_implimented/not_implimented.sh

function __create_tmpdir() {
    called;
    TMPDIR=$(mktemp -d);
}

function __rm_tmpdir() {
    called;
    rm -rf "${TMPDIR}";
}

function auto_tmpdir() {
    __create_tmpdir;
    export TMPDIR;
    $@;
    retval=$?;
    __rm_tmpdir;
    return $retval;
}

# NOTICE:
# SIGHUP、SIGINT、SIGQUIT、SIGTERM を受けたときに true コマンドを実行する。
# これらのシグナルを受けたときには何もせず、子プロセスに受けたシグナルを伝播させる。
# 結果的に自プロセスは子プロセスの終了を待ち、__rm_tmpdir を実行することになる。
trap true 1 2 3 15
