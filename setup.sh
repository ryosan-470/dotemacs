#!/bin/bash
#
# シンポリックリンクを作成します
#

files="
.emacs.d
"
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
    mkdir ${HOME}/.dotconfig
    cd ..
    cp -r dotemacs ${HOME}/.dotconfig/
    ln -s ${HOME}/.dotconfig/dotemacs ${HOME}/.emacs.d 
else
    echo 'Abort installing'
    exit 0
fi

# Installing emacs elisp
echo '==========================================================='
echo 'We will install emacs plugin (emacs elisp) below'
echo 'yasnippet'
echo 'auto-java-complete'
echo 'Do you really install now?(yes/no) (RECOMENDDED)'
echo '==========================================================='
read ans
if [ "$ans" = "yes" ]
then
    # yasnippet
    cd ${HOME}/.dotconfig/dotemacs/elisp/
    echo '==========================================================='
    echo '|installing yasnippet...                                  |'
    echo '==========================================================='
    git clone https://github.com/capitaomorte/yasnippet.git
    
    # auto-java-complete
    echo '==========================================================='
    echo 'installing auto-java-complete...'
    echo '==========================================================='
    git clone https://github.com/emacs-java/auto-java-complete.git
    cd $HOME/
    ln -s ${HOME}/.dotconfig/dotemacs/.java_base.tag ${HOME}/.java_base.tag 
else
    echo 'Abort installing'
fi

echo '==========================================================='
echo 'Finished installing...'
echo '==========================================================='
