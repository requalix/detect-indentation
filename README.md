# detect-indentation.vim

A Vim plugin to detect the indentation of the file you are editing.

It sets sts st and sw to the number minimum number of leading spaces on any of
the first 100 lines or 8, whichever is smaller. If there are no leading spaces
but there are leading tabs, it sets noexpandtab.

## Installation

Copy and paste:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
        curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
    cd ~/.vim/bundle
    git clone https://github.com/requalix/detect-indentation.git
    grep -q pathogen ~/.vimrc || echo 'call pathogen#infect()' >> ~/.vimrc

## Setting defaults

Simply put them in your vimrc as usual, anywhere before the line with
`call pathogen#infect()`. The relevant settings are:

    set et sw=4 ts=4 sts=4

## Updating

    cd ~/.vim/bundle/detect-indentation
    git pull
