#!/bin/zsh
# ======================================================================
# Creation Date: Tue 25 Jan 2022 01:15:00 AM CET
# Description: My zsh configurations.
# ======================================================================
# Additional resource: https://stuvel.eu/post/2020-08-05-zsh-config/
CONFIG_PATH="$HOME/.config/zsh"

# Set global variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR="nvim"

# Autoloads
autoload -U colors && colors

# oh-my-zsh settings (TODO: Need to rework some of this)
source "$CONFIG_PATH/lib/spectrum.zsh"
source "$CONFIG_PATH/lib/key-bindings.zsh"
source "$CONFIG_PATH/lib/termsupport.zsh"
source "$CONFIG_PATH/lib/completion.zsh"


# Set up history
# Additional resource: https://zsh.sourceforge.io/Doc/Release/Options.html
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000   # Max number of entries in internal history
export SAVEHIST=100000   # Max number of entries in history file
setopt APPEND_HISTORY         # Append to history instead of replacement.
setopt HIST_FIND_NO_DUPS      # No duplicates while scrolling through history.
setopt HIST_IGNORE_DUPS       # Do not save command if copy of previous.
setopt HIST_IGNORE_ALL_DUPS   # Do not write duplicates in histfile.
setopt EXTENDED_HISTORY       # Additionally record timestamp in history.
setopt SHARE_HISTORY          # Share history between different instances.
setopt HIST_VERIFY            # Show command loaded from hist before running.
setopt HIST_EXPIRE_DUPS_FIRST # Delete dups first from internal history.


# Load theme, aliases and functions
source "${HOME}/.config/zsh/theme_1.zsh"
source "${HOME}/.config/zsh/aliases.zsh"
source "${HOME}/.config/zsh/funcs.zsh"

## Enable autocomplete (Automatic in Debian)
fpath+="${HOME}/.zfunc"
autoload -Uz compinit && compinit

# Set up terminal programs
source "${HOME}/.config/zsh/setup/nnn.zsh"
source "${HOME}/.config/zsh/setup/man.zsh"
source "${HOME}/.config/zsh/setup/docker.zsh"
source "${HOME}/.config/zsh/setup/fzf.zsh"
source "${HOME}/.config/zsh/setup/zoxide.zsh"
source "${HOME}/.config/zsh/setup/deno.zsh"
eval "$(starship init zsh)"
eval "$(ssh-agent -s)" > /dev/null



# Set up compiler paths
# export GEM_HOME="$HOME/.gems" # Ruby gem path
export GOPATH=$HOME/.go
# export GOPATH=$HOME/go:$HOME/Documents/code/golang
# export GOPATH="$HOME/Documents/FAIBRICS/github/go/:$GOPATH"


# Update path variable
# export PATH="$PATH:$HOME/.gems/bin" # Add ruby executables to path
export PATH="$PATH:$HOME/.go/bin" # Add go executables to path
# export PATH="$PATH:$HOME/.cargo/bin" # Add rust executables to path



# TODO: Check this out
# https://zsh.sourceforge.io/Doc/Release/Options.html
setopt autocd

# pnpm
export PNPM_HOME="/home/tobias/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

