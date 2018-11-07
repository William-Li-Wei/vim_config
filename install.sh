#!/bin/sh
set -e

cd /tmp/vim_config
cp -rf /tmp/vim_config/vim_config/* ~/.vim_config
cp /tmp/vim_config/vimrc  ~/.vimrc
rm -rf /tmp/vim_config/

echo "Vim configuration installed! Enjoy :-)"N
