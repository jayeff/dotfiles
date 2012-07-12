dotfiles
========

*in progress*

todo:
* convert current vimrc
* vim: merge work/private
* vim: plugins as submodules
* add ackrc
* automate process

some notes:
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim

add a submodule
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
initialize all submodules
git submodule update --init
fetch update for all submodules
git submodule foreach git pull origin master

links:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
