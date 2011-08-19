# A custom prompt
function prompt_char {
  if [ "$(whoami)" = "root" ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo "%{$fg_bold[cyan]%}\n𝞨 %{$reset_color%}"; fi
}

function rails_char {
  if [[ -e `pwd`/config/boot.rb ]]; then echo " ☃ "; else echo ""; fi
}

PROMPT='%{$fg_bold[magenta]%}${PWD/#$HOME/~}$(rails_char)%{$reset_color%} $(prompt_char) '
RPROMPT='%{$fg[yellow]%}$(date "+%H:%M") %{$fg[yellow]%}〖%{$fg_bold[blue]%}$(~/.rvm/bin/rvm-prompt i v g)%{$fg[yellow]%}〗%{$reset_color%} %{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}[%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg_bold[cyan]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔ "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%} ✗ "
