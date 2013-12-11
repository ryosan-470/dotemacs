#!/bin/bash
files="
.emacs.d
"
INSTALL_PATH=${HOME}/.dotconfig

PWD=${PWD}
echo '==========================================================='
echo 'W A R N I N G'
echo 'Now, we will install emacs config to own your pc.'
echo 'After installing, your environment was changed more.'
echo '==========================================================='
echo 'Do you really install emacs config on your environment?(yes/no)'
read ans
if [ "$ans" = "yes" ]
then
    echo 'Start cloneing to github and making symbolic link...'
    if [ ! -e $INSTALL_PATH ]; then	
	mkdir $INSTALL_PATH
    fi
    cd $INSTALL_PATH
    git clone https://github.com/jtwp470/dotemacs.git
    if [ -e ${HOME}/.emacs.d ]; then
	mv ${HOME}/.emacs.d ${HOME}/.emacs.d_bk	
    fi
    ln -s ${HOME}/.dotconfig/dotemacs ${HOME}/.emacs.d 
else
    echo 'Abort installing'
    exit 0
fi

# git submodule
cd ${HOME}/.dotconfig/dotemacs/
git submodule init
git submodule update
# make symbolic link to .java_base.tag
ln -s ${HOME}/.dotconfig/dotemacs/.java_base.tag ${HOME}/.java_base.tag 

echo '==========================================================='
echo 'Finished installing...'
echo '==========================================================='
