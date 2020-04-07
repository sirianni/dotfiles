# https://wiki.archlinux.org/index.php/Zsh#Key_bindings

# emacs mode
# bindkey -e

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"

bindkey "${key[Home]}" beginning-of-line
bindkey "${key[End]}" end-of-line
bindkey "${key[Delete]}" delete-char

bindkey '^K' kill-line
bindkey ';5D' backward-word
bindkey ';5C' forward-word
bindkey '^[[5D' backward-word
bindkey '^[[5C' forward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

bindkey '^[[3;3~' kill-word       # Alt-Delete
bindkey '^[[3;5~' kill-word       # Ctrl-Delete
bindkey '\ed' kill-word           # Alt-D
bindkey '^H' backward-kill-word   # Ctrl-Delete
bindkey '^[^?' backward-kill-word # Alt-Delete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
    autoload -Uz add-zle-hook-widget
    function zle_application_mode_start { echoti smkx }
    function zle_application_mode_stop { echoti rmkx }
    add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
    add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
