#!/bin/bash
###################################################################
##
## setup.sh -- setup tool for jtwp470's Emacs and dotfiles config
##
## Author : Ryosuke SATO (jtwp470)  tango@jtwp470.net
## Licence: Public
##
###################################################################
TARGET_DIR="${HOME}/.dotconfig"       # 保存先
VERSION="1.00"

DEMACS="${HOME}/.emacs.d"
INSTALL_PATH="${HOME}/.dotconfig/dotemacs"
# echo色付け Usage echowcl text [COLOR] [TYPE]
function echowcl() {
    TEXT="${1}"
    if [ $# -lt 3 ]; then
            echo "${TEXT}"
    else
            case $2 in
                black)
                        COLOR=30;; #COLOR=BLACK
                red)
                        COLOR=31;; #COLOR=RED
                green)
                        COLOR=32;; #COLOR=GREEN
                yellow)
                        COLOR=33;; #COLOR=YELLOW
                blue)
                        COLOR=34;; #COLOR=BLUE
                white)
                        COLOR=37;; #COLOR=WHITE
                *)
                        COLOR=37;; #COLOR=DEFAULT
            esac

            case $3 in
                normal)
                        STATUS=0;; #STATUS=NORMAL
                bold)
                        STATUS=1;; #STATUS=BOLD
                line)
                        STATUS=4;; #STATUS=Underline
                *)
                        STATUS=0;;
            esac
            arrow="\033[1;37m==> \033[0;39m"
            begin="\033[${STATUS};${COLOR}m"
            end="\033[0;39m"
            echo -e ${arrow}${begin}${TEXT}${end}
    fi
}

# Usage format TEXT type
function format() {
    TEXT="${1}"
    type=$2
    if [ $# -lt 2 ]; then
            echowcl "${TEXT}" white normal
    else
            case $type in
                info)    echowcl "${TEXT}" blue normal;;
                success) echowcl "${TEXT}" green bold;;
                fail)    echowcl "${TEXT}" red bold;;
                warn)    echowcl "${TEXT}" yellow bold;;
                *)       echowcl "${TEXT}" white normal
            esac
    fi
}

# [DEPLOY] Clone git repository.
function fetch() {
    _branch=${1:"master"}
    REPO="jtwp470/dotemacs.git"
    GIT_CLONE="git clone --recursive -b ${_branch} --single-branch"
    COMMAND="${GIT_CLONE} git@github.com:${REPO} ${INSTALL_PATH}"
    ${COMMAND}
    format "${COMMAND}" info
    if [ $? -ne 0 ]; then
        format "Failed to clone via SSH. Try to use https" info
        COMMAND="${GIT_CLONE} https://github.com/${REPO} ${INSTALL_PATH}"
        ${COMMAND}
        format "${COMMAND}" info

        if [ -$? -ne 0 ]; then
            format "Error: Cannot clone repository. Exit" fail
            return 1
        fi
    fi
    return 0;
}

# [DEPLOY] make symlink
function symlink() {
    if [ -e ${DEMACS} ]; then
        # 既存の.emacs.dは名前を変えてバックアップ
        RNAME=".emacs.d_bk_`date +%Y%m`"
        mv ${DEMACS} ${HOME}/${RENAME}
        format "Rename .emacs.d to ${RNAME}" info
    fi

    ln -s ${INSTALL_PATH} ${DEMACS}

    # make symbolic link to .java_base.tag
    ln -s ${DEMACS}/.java_base.tag ${HOME}/.java_base.tag

    return 0
}

# [DEPLOY] install cask
function install_cask() {
    CASK_URL="https://raw.github.com/cask/cask/master/go"
    if [ type curl > /dev/null 2>&1 ]; then
        curl -fsSkL ${CASK_URL} | python
    else
        wget --no-check-certificate ${CASK_URL} && python go
    fi
    format "Success to install cask" success
    format "Please add to path to use cask command" info
    format "export PATH=${HOME}/.cask/bin:${PATH}"
    return 0
}

# [INIT] auto-complete-clang-async
function install_acca() {
    OS=`uname`
    if [ "OS" = "Linux" ]; then
        # Ubuntuであると仮定する
        format "install dependences" info
        sudo apt-get install clang libclang-dev llvm-dev
        cd ${DEMACS}/elisp/emacs/clang-complete-async
        # make LLVM_CONFIG=llvm-config-3.4
        make
    elif [ "OS" = "Darwin" ]; then
        # Mac OSX
        brew install emacs-clang-complete-async
        ln -s /usr/local/Cellar/emacs-clang-complete-async/clang-complete ~/.emacs.d/elisp/emacs-clang-complete-async/clang-complete
    else
        format "Not supported your OS" fail
        return 1
    fi
    format "Success to install emacs-clang-complete-async" success
    return 0
}

# Deploy
function deploy() {
    format "Starting installation for dotemacs" info
    _branch=${1:"master"}
    fetch ${_branch}
    format "Make symlink" info
    symlink
    format "Cask install" info
    install_cask
    return 0
}

# init
function init() {
    format "initialize" info
    pip install -r ${DEMACS}/requirements.txt
    format "installing cask" info
    install_cask
    export PATH="${HOME}/.cask/bin/cask:${PATH}"
    cask install && cask update && cask upgrade
    return 0
}

# test
function tests() {
    cd ${DEMACS}/tests
    format "Emacs byte-compile test"
    bash test-inits-el-byc.sh
    return 0
}
OPT=$1

case ${OPT} in
    "help")
        echo "help"
        exit 0;;
    "deploy")
        deploy && exit 0;;
    "init")
        init && exit 0;;
    "test")
        tests && exit 0;;
    "install-cask")
        install_cask && exit 0;;
    "install-acca")
        install-acca && exit 0;;
    "install-travis")
        deploy "feature/travis"
        init
        install_acca
        tests
        exit 0;;
    *)
        echo "No options"
        exit 0;;
esac
