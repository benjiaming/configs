source ~/git/configs/includes.sh

alias resource="source ~/.zshrc"

if [[ $ZSH_VERSION < 5.0 ]] then ~/bin/zsh;  fi
if [[ $ZSH_VERSION > 5.0 ]] then source ~/git/devbox/zsh/zshrc.zsh; fi

#export PROMPT="[ %{$fg[white]%}%n%{$reset_color%}@%{$fg[cyan]%}%m:%{$fg_no_bold[green]%}%~ %{$reset_color%}] > "

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M' 
zstyle ':vcs_info:*' unstagedstr 'M' 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
  '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
  zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
  zstyle ':vcs_info:*' enable git 
  +vi-git-untracked() {
        if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
              [[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
                hook_com[unstaged]+='%F{1}??%f'
                fi
  }


precmd () { vcs_info }
PROMPT='%F{2}%n%{$reset_color%}@%{$fg[cyan]%}%m:%F{3}%3~ %{$reset_color%}> '
RPROMPT='${vcs_info_msg_0_}'

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
bindkey    "^[[H"           beginning-of-line
bindkey    "^[[F"           end-of-line
