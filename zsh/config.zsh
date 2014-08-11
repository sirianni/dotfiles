eval "$(dircolors)"
export CLICOLOR=true

fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
unsetopt correct

autoload -U select-word-style
select-word-style bash

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

# emacs mode
bindkey -e
bindkey ';5D' backward-word
bindkey ';5C' forward-word

bindkey '^[[3;5~' kill-word

export PAGER='less'
export LESS="-R"
export EDITOR="vim"
