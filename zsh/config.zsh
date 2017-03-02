eval "$(dircolors)"
export CLICOLOR=true

eval "$(lesspipe)"

fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
DIRSTACKSIZE=10

setopt no_bg_nice # don't nice background tasks
setopt no_hup
setopt hist_verify
setopt share_history # share history between sessions
setopt extended_history # add timestamps to history
setopt append_history # adds history
setopt inc_append_history share_history  # adds history incrementally and share it across sessions
setopt hist_ignore_all_dups  # don't record dupes in history
setopt hist_reduce_blanks
setopt prompt_subst
setopt correct
setopt complete_in_word
setopt interactive_comments
setopt auto_pushd
setopt pushd_minus
setopt rc_quotes
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
bindkey '^[[5D' backward-word
bindkey '^[[5C' forward-word

bindkey '^[[3;5~' kill-word

export PAGER='less'
export LESS="-R"
export EDITOR="vim"
export TZ="America/New_York"
export PDSH_RCMD_TYPE="ssh"

export PATH="~/src/scripts/bin:$PATH"