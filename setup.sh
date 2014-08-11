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
VERSION="0.01 Alpha"

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
	    info)
		echowcl "${TEXT}" blue normal;;
	    success)
		echowcl "${TEXT}" green bold;;
	    fail)
		echowcl "${TEXT}" red bold;;
	    warn)
		echowcl "${TEXT}" yellow bold;;
	    *)
		echowcl "${TEXT}" white normal
	esac
    fi
}

function fetch() {
    cd ${TARGET_DIR}
    REPO=$1
    USER='jtwp470'
    
    format "Starting fetch ${REPO} repository" info

    if [ ! -e ${TARGET_DIR}/${REPO} ]; then
	git clone git@github.com:${USER}/${REPO}.git
	
	if [ $? -ne 0 ]; then
	    format "Can't fetch to use SSH. Challenge to fetch to use https" fail
	    git clone https://github.com/${USER}/${REPO}.git
	fi
	
	if [ $? -ne 0 ]; then
	    format "Can't fetch to use https. Please check your network configuration or run script one more" fail
	    format "Fatal Error! Exit script" fail
	    exit 1
	fi
    else
	format "We didn't fetch repo because ${TARGET}/${REPO} exists" warning
	
    fi
    return 0
}

function initialize() {
    format "Check to exist ${TARGET_DIR}"
    if [ ! -e ${TARGET_DIR} ]; then
	mkdir ${TARGET_DIR}
	format "Make ${TARGET_DIR}" success
    fi
}

function install_dotemacs() {
    initialize
    fetch dotemacs

    DEMACS="${TARGET_DIR}/dotemacs"

    # 既存の.emacs.dは名前を変えてバックアップ
    if [ -e ${HOME}/.emacs.d ]; then
	RENAME=".emacs.d_bk_`date +%Y%m`"
	mv ${HOME}/.emacs.d ${HOME}/${RENAME}
	format "Rename .emacs.d to ${RENAME}" info
    fi
    ln -s ${DEMACS} ${HOME}/.emacs.d

    # cask はインストールされているか
    which cask
    if [ $? -ne 0 ]; then
	cd ${HOME}
	# curlが存在しているかどうか
	which curl
	if [ $? -ne 0 ]; then
	    wget --no-check-certificate https://raw.githubusercontent.com/cask/cask/master/go | python
	fi
	curl -fsSkL https://raw.github.com/cask/cask/master/go | python
	export PATH=$HOME/.cask/bin:$PATH
	format "Finished installing cask for Emacs" success
	format "Please add bellow path at .bashrc or .zshrc" info
	format "export PATH='~/.cask/bin:$PATH'" info
    fi

    cd ${DEMACS}
    cask update && cask install && cask update && cask upgrade

    git submodule init && git submodule update

    # make symbolic link to .java_base.tag
    ln -s ${DEMACS}/.java_base.tag ${HOME}/.java_base.tag

    echo "======================================================"
    format "Finished installing dotemacs at your computer." success
    echo "======================================================"
}

function install_dotfiles() {
    initialize
    cd ${TARGET_DIR}
    fetch dotfiles
    
    DFILES=${TARGET_DIR}/dotfiles

    # dotfileの一覧
    files=(".zshrc" ".zshenv" ".zlogout" ".vimrc" ".tmux" ".tmux.conf" ".gitconfig")
    
    for ((i = 0; i < ${#files[@]}; i++)) {
	if [ ! -e "${HOME}/${files[i]}" ]; then
	    format "Generate ${files[i]} link..." success
	    ln -s ${DFILES}/${files[i]} ${HOME}/${files[i]}
	else
	    format "${files[i]} exist, so we backup old file and renew link"
	    mv ${HOME}/${files[i]} ${HOME}/${files[i]}_`date +%Y%m`
	    ln -s ${DFILES}/${files[i]} ${HOME}/${files[i]}
	fi
    }

    format "Start installing oh-my-zsh..." info
    cd ${HOME}

    which curl
    if [ $? -ne 0 ]; then
	format "Using wget command" info
	# curl がない場合はwgetを使う
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh  | sh
    else
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    fi
    
    rm -f $HOME/.zshrc*  # oh-my-zshで自動生成されるので
    ln -s ${DFILES}/.zshrc ${HOME}/.zshrc

    format "Success installing oh-my-zsh" success

    cd ${TARGET_DIR}
    git clone git://github.com/zsh-users/zaw.git

    format "Make .local.zsh for local configuration" info
    echo "This area is for local configuration which is depend on your environment." > ${HOME}/.local.zsh
    echo "======================================================"
    format "Finished installing dotfiles at your computer." success
    echo "======================================================"
}

function install_powerline() {
    OS=`uname`
    case $OS in
	"Darwin")
	    brew tap senemat/font
	    brew install --powerline --vim-powerline ricty
	    ;;
	"Linux")
	    ;;
	*)
	    format "Fatal Error: We didn't recognize your using OS" fail
    esac
}
function main() {
    echo "======================================================"
    echo "Welcome to setup script for jtwp470"
    echo "setup at dotemacs and dotconfig"
    echo "Script version : ${VERSION}"
    echo "Please choose number what you want to install."
    echo "(1) ALL     (2)Only dotemacs     (3)Only dotfiles"
    echo "(4) Exit Script"
    echo -n ">>> " # 改行しない
    read ans

    case $ans in
	1)
	    format "You CANNOT use this scipt." fail
	    format "Exit" fail
	    exit 0;;
	2)
	    format "Start installing dotemacs..." info
	    install_dotemacs;;
	3)
	    format "Start installing dotfiles..." info
	    install_dotfiles;;
	4)
	    format "Exit script..." success
	    exit 0;;
	5)
	    show_status;;
	*)
	    main
    esac
}

main
