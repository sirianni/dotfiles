autoload colors && colors
autoload -U promptinit
promptinit

export PROMPT="[%{$reset_color$fg[cyan]%}%n%{$reset_color%}@%{$bold_color$fg[blue]%}%m%{$reset_color%} %{$bold_color$fg[cyan]%}%~%{$reset_color%}]$prompt_newline%{$bold_color$fg[yellow]%}$%{$reset_color%} "
