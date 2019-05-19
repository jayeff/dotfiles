Dotfiles
========

Setup symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/ackrc ~/.ackrc
    ln -s ~/dotfiles/agignore ~/.agignore
    ln -s ~/dotfiles/irbrc ~/.irbrc
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
    ln -s ~/dotfiles/git_template ~/.git_template

Install vim plugins:

* Initial setup: Install vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
* Run `vim +PlugInstall +qall`
