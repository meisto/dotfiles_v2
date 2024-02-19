# ======================================================================
# Author: meisto
# Creation Date: Wed 21 Jun 2023 03:05:00 PM CEST
# Description: -
# ======================================================================
# Originally copied from oh-my-zsh, now modified and added to.
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets

# Make sure that the terminal is in application mode when zle is active, since
# only then values from $terminfo are valid
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

bindkey -e                                            # Use emacs key bindings

# Find key names with: <Ctrl+v><key>
bindkey '\ew' kill-region           # [Esc-w] - Kill from the cursor to the mark
bindkey ' ' magic-space             # [Space] - do history expansion
bindkey '^[[1;5C' forward-word      # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word     # [Ctrl-LeftArrow] - move backward one word
bindkey '^?' backward-delete-char   # [Backspace] - delete backward
bindkey '^[l' clear-screen          # [Alt-L] - Clear screen
bindkey '^[j' history-beginning-search-forward
bindkey '^[k' history-beginning-search-backward

# On <Strg-W> delete only one word
my-backward-delete-word() {
   local WORDCHARS=${WORDCHARS/\//}
   zle backward-delete-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word


if [[ "${terminfo[kdch1]}" != "" ]]; then
  bindkey "${terminfo[kdch1]}" delete-char            # [Delete] - delete forward
else
  bindkey "^[[3~" delete-char
  bindkey "^[3;5~" delete-char
  bindkey "\e[3~" delete-char
fi

# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# file rename magick
bindkey "^[m" copy-prev-shell-word


## consider emacs keybindings:
#bindkey -e  ## emacs key bindings
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search
#bindkey '^[^[[C' emacs-forward-word
#bindkey '^[^[[D' emacs-backward-word
#
#bindkey -s '^X^Z' '%-^M'
#bindkey '^[e' expand-cmd-path
#bindkey '^[^I' reverse-menu-complete
#bindkey '^X^N' accept-and-infer-next-history
#bindkey '^W' kill-region
#bindkey '^I' complete-word
## Fix weird sequence that rxvt produces
#bindkey -s '^[[Z' '\t'
