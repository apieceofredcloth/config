#!/usr/bin/env bash

CURRENT_DIR=`dirname $0`
if [ $CURRENT_DIR = '.' ];then
    CURRENT_DIR=`pwd`
fi
echo "begin with $CURRENT_DIR"

# link conf file to home
to_link_files=(
'.gitconfig'
'.jshintrc'
'.pylintrc'
'.tmux.conf'
'.zshrc'
'vimrc/.vimrc.before.local'
'vimrc/.vimrc.bundles.local'
'vimrc/.vimrc.local'
)
for var in ${to_link_files[@]};do
    echo "link $var"
    ln -sif $CURRENT_DIR/$var $HOME/
done

# fire vim
#https://github.com/spf13/spf13-vim

# fire zsh
#https://github.com/sorin-ionescu/prezto
