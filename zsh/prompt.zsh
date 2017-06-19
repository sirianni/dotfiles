autoload colors && colors
autoload -U promptinit
promptinit

precmd() {
    vcs_info
}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg
zstyle ':vcs_info:*' disable-patterns "$HOME/rtphome(|/*)"
zstyle ':vcs_info:hg:*' hgrevformat "%r:%h"
zstyle ':vcs_info:hg:*' branchformat "%b"
zstyle ':vcs_info:*:*' get-revision true
zstyle ':vcs_info:*:*' check-for-changes true
zstyle ':vcs_info:*:*' unstagedstr "☆"
zstyle ':vcs_info:*:*' stagedstr "★"
# hg support* 2014-Dec 4760:7bcff90ab54a
zstyle ':vcs_info:hg:*' formats "%{$fg[grey]%}%s %{$fg[white]%}%r%{$fg[red]%}%u %{$fg_bold[yellow]%}%b%{$reset_color%} %{$fg[blue]%}%i%{$reset_color%}%{$reset_color%}"

# zstyle ':vcs_info:git:*' get-revision true
# zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:git:*' check-for-unstaged-changes true

# Using https://github.com/olivierverdier/zsh-git-prompt instead of native vsc info
# zstyle ':vcs_info:git:*' formats "%{$fg[grey]%}%s %{$fg[white]%}%r%{$fg[red]%}%u%c %{$fg_bold[yellow]%}%b%{$reset_color%} %{$fg[blue]%}%i%{$reset_color%}%{$reset_color%}"

# [esirianni@esirianni-ub ~/src/ansible]
# $
export PROMPT='[%{$reset_color$fg[cyan]%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m%{$reset_color%} %{$bold_color$fg[cyan]%}%~%{$reset_color%}]$prompt_newline%{$fg_bold[yellow]%}$%{$reset_color%} '

# Align RPROMPT to first line of PROMPT
# http://superuser.com/questions/357107/zsh-right-justify-in-ps1
_lineup=$'\e[1A'
_linedown=$'\e[1B'
export RPROMPT='%{${_lineup}%}$(git_super_status)${vcs_info_msg_0_}%{${_linedown}%}'