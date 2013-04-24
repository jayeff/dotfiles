dotfiles
========

install notes:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/ackrc ~/.ackrc
    ln -s ~/dotfiles/irbrc ~/.irbrc
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
    ln -s ~/dotfiles/git_template ~/.git_template

add a submodule (eg fugitive)

    git submodule add http://github.com/tpope/vim-fugitive.git vim/bundle/fugitive
    initialize and update all submodules
    git submodule update --init
    fetch update for all submodules
    git submodule foreach git pull origin master

links:  
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/  
http://betterthangrep.com/documentation/
