# detect-indentation.vim

A Vim plugin to detect the indentation of the file you are editing.

It sets sts st and sw to the number minimum number of leading spaces on any of
the first 100 lines or 8, whichever is smaller. If there are no leading spaces
but there are leading tabs, it sets noexpandtab.

## Installation

  1. Install [Pathogen](https://github.com/tpope/vim-pathogen) (just copy and paste some stuff)
  2. Copy and paste this:

        cd ~/.vim/bundle
        git clone https://github.com/requalix/detect-indentation.git

## Updating

    cd ~/.vim/bundle/detect-indentation
    git pull
