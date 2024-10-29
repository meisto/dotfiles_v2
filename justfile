# author: meisto
# date: 2024-10-29 22:48:47

prepare:
	# Create dir if it does not exist
	mkdir -p ${HOME}/.config

setup_zsh: prepare
	stow --dotfiles zsh

setup_config: prepare
	stow --target=${HOME}/.config config;

test: prepare
	echo ${HOME}
