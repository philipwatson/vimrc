#!/bin/bash

function quit {
   echo $1
   exit 1
}

if test -f ~/.vimrc; then
   backupfile="vimrc.backup_"`date +%Y-%m-%d:%H:%M:%S`
   cp ~/.vimrc ~/"$backupfile"
   echo "created backup of your existing .vimrc (~/$backupfile)"
fi

if [ ! -d ~/.vim/bundle ]; then
   mkdir -p ~/.vim/bundle
   echo "created ~/.vim/bundle directory"
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim || quit "vundle download failed"
	echo "vundle successfully downloaded"
fi

echo 'source '`pwd`'/vimrc.vim' > ~/.vimrc
echo "created new ~/.vimrc file"

vim +PluginInstall +qall || quit "failed to launch vim"
echo "plugins installed. If not, launch vim and run :PluginInstall" 

echo "Awesome, setup done!"
