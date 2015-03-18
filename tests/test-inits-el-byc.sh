#!/bin/bash
EMACS=emacs
DEMACS=${HOME}/.emacs.d
EL_FILES=($(ls ${DEMACS}/inits/*.el))
ELC_FILES=($(ls ${DEMACS}/inits/*.elc))
function byte_compile() {
    ${EMACS} -batch -f batch-byte-compile ${1}
    if [ $? -ne 0 ]; then
        echo "[Error] Fail to compile"; return 1
    fi
    echo "Generate elc file : ${1}\n"
    return 0
}

function remove_elc() {
    rm ${DEMACS}/inits/*.elc
    echo "Remove all *elc files"
}

function main() {
    for el in ${EL_FILES[@]}
    do
        byte_compile ${el} || exit 1
    done
    echo "[Success] All compilation successed"
    remove_elc
    exit 0
}

main
