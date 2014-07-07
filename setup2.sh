#!/bin/bash -x
TARGET_DIR="${HOME}/.dotconfig"       # 保存先

# echo色付け Usage echowcl text [COLOR] [TYPE]
function echowcl() {
    if [ $# -ne 3 ]; then
	echo "${1}"
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
	begin="\e[${STATUS};${COLOR}m "
	end=" \e[m"
	TEXT=${begin}${1}${end}
	echo  ${TEXT}
    fi
}

function fetch() {
    REPO=$1
    USER='jtwp40'
    
    git clone git@github.com:${USER}/${REPO}.git

    if [ $? -ne 0 ]; then
	echo "Can't fetch to use SSH. Challenge to fetch to use https"
	git clone https://github.com/${USER}/${REPO}.git
    fi

    if [ $? -ne 0 ]; then
	echo "Can't fetch to use https. Please check your network configuration or run script one more"
	echo "Fatal Error! Exit script"
	exit 1
    fi
    return 0
}

function install_dotemacs() {
    DEMACS="${TARGET_DIR}/dotemacs"
    # 既存の.emacs.dは名前を変えてバックアップ
    if [ -e ${HOME}/.emacs.d ]; then
	mv ${HOME}/.emacs.d ${HOME}/.emacs.d_bk_`date +%Y%m%`
    fi
    ln -s ${DEMACS} ${HOME}/.emacs.d

    # cask はインストールされているか
    which cask
    if [ $? -ne 0 ]; then
	cd ${HOME}
	curl -fsSkL https://raw.github.com/cask/cask/master/go | python
	export PATH='~/.cask/bin:$PATH'
    fi

    cd ${DEMACS}
    cask && cask install

    git submodule init && git submodule update

    # make symbolic link to .java_base.tag
    ln -s ${DEMACS}/.java_base.tag ${HOME}/.java_base.tag

    echo "======================================================"
    echo "Finished installing dotemacs at your computer."
    echo "======================================================"
}

function install_dotfiles() {

}

function show_status() {
    echo "STATUS your environment"
    case `uname` in
	'Darwin')
	    OS='Mac OSX';;
	'Linux')
	    OS='Linux';;
	*)
	    OS='UNKNOWN';;
    esac

    echo "Operating system: ${OS}"
    if [ -e ${HOME}/.emacs.d &&  -e ${TARGET_DIR}/dotemacs ]; then
	echo "Already installed dotemacs"
    else
	echo "Not installed dotemacs"
    fi
}

