#! /bin/bash
#
# ${TMPDIR} 以下に一時的にファイルを作成し、ls コマンドでファイルの存在を確認する。
#
ls_log="${TMPDIR}/ls.log";
(cd ${TMPDIR};
    pwd;
    mktemp;
    ls -al)
