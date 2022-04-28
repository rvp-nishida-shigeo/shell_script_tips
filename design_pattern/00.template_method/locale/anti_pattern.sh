#! /bin/bash
set -u -e 

function foo() {
    local lang="${1}";
    local funcname="${FUNCNAME[0]}";
    case "${lang}" in
	jp) echo "${funcname} が呼ばれたよ。"; ;;
	en) echo "${funcname} called."; ;;
	*) echo "${funcname}: Unknown lang ${lang}."; ;;
    esac
    return 0;
}

function bar() {
    local lang="${1}";
    local funcname="${FUNCNAME[0]}";
    case "${lang}" in
	jp) echo "${funcname} が呼ばれたよ。"; ;;
	en) echo "${funcname} called."; ;;
	*) echo "${funcname}: Unknown lang ${lang}."; ;;
    esac
    return 0;
}

function baz() {
    local lang="${1}";
    local funcname="${FUNCNAME[0]}";
    case "${lang}" in
	jp) echo "${funcname} が呼ばれたよ。"; ;;
	en) echo "${funcname} called."; ;;
	*) echo "${funcname}: Unknown lang ${lang}."; ;;
    esac
    return 0;
}

if [ $# -ne 1 ]; then
    echo "Usage: $0 [jp|en]";
    exit 0;
fi

foo $@ || exit 1;
bar $@ || exit 1;
baz $@ || exit 1;

