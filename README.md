## Fred's Vim Configuration
This my basic vim config. I use vim for a decent amount of dev work but it is not my main editor.

## Features
* Package management  => Pathogen
* Project explorer    => Nerdtree
* Code completion     => YouCompleteMe
* Tab bar             => Vim Airline
* Tmux integration    => Tmuxline
* Visual git          => Vim Gitgutter

## Usage
* <leader> nt => start Nerdtree

## Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Nerdtree/Vim-Gitgutter/Vim-Airline/Tmuxline
* git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
* git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
* git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
* git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim

## If using pyenv python with YouCompleteMe you must install python in this way
env PYTHON_CONFIGURE_OPTS="--enable-shared"

## YouCompleteMe
This is a more complex build so please follow its individual instructions.
