## Fred's Vim Configuration
The idea for this was from my friend Dave and others who have posted their Vim configurations.
The packages listed below can be install with Bundler.

## Features
* Package management => Pathogen
* Project explorer => Nerdtree
* Code completion => YouCompleteMe
* Fuzzy file search => Ctrlp
* Text search => Ack
* Tab bar => Airline
* Git wrapper => Fugitive
* Path based search => Command T

## Usage
* <leader> nt => start Nerdtree

## Installation
#### YouCompleteMe

* Requires Vim 7.3.584
* Requires python2 with dev files (in package manager)
* Requires CMake
* Requires clang for C/C++/Objective C support
* Must run installation script to compile code

#### Airline

* Requires Fugitive for git integration
* Looks better with the installation of Powerline fonts.

## Issues in using vim and tmux on my mac

#### Tmux issues
* Want to be able to change leader to use alt so can do atl-\
* Want to be able to visually select and copy text with mouse
	Note - pasting from clipboard works
* Want to get delete key to work
	Note - ctrl-del works but not del
* Want to figure out how to move around bash aka begining and end of line
	
#### Vim issues
* Want to figure out how to paste from clipboard
	Note - it can paste text but the first few chars are missing
* Want to figure out how to copy from vim to bash or other programs
* Want to figure out how to after return key to be at the correct indent
