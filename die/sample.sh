#! /bin/bash
set -u -e
source ./die.sh


false || \
    die "error!" 128;

false;
if [ $? -ne 0 ]; then
    die "error!" 255;
fi

