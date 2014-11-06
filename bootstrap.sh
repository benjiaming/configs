#!/bin/bash

cur_dir=`pwd`
cd 
ln -vfs $cur_dir/bashrc ~/.bashrc
ln -vfs $cur_dir/git-completion.bash ~/.git-completion.bash
ln -vfs $cur_dir/vagrant-completion.bash ~/.vagrant-completion.bash
ln -vfs $cur_dir/vimrc ~/.vimrc
ln -vfs $cur_dir/gitignore_global ~/.gitignore_global

