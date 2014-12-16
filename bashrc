
source ~/git/configs/includes.sh


#
# colors
#

prompt_bold="$(tput bold)"
prompt_reset="$(tput sgr0)"

prompt_black="$(tput setaf 0)"
prompt_red="$(tput setaf 1)"
prompt_green="$(tput setaf 2)"
prompt_yellow="$(tput setaf 3)"
prompt_blue="$(tput setaf 4)"
prompt_purple="$(tput setaf 5)"
prompt_cyan="$(tput setaf 6)"
prompt_white="$(tput setaf 7)"

#export PS1="\[\033[1;36m\]\u\[\e[m\]@\h:\033[0m\]\[\033[32m\]\w]\[\033[0m\]\$(__git_ps1) > "
#export PS1='$(printf "%*s\r%s %`tput cols`s" "(${prompt_cyan}$(git branch 2>/dev/null | grep '^*' | sed s/..//)) ${prompt_reset}$(date +%H:%M:%S)" "[ ${prompt_bold}${prompt_white}\u${prompt_reset}@\h${prompt_bold}:${prompt_green}\w${prompt_reset} ] ")'
export PS1='$(printf "%*s\r%s" $(( COLUMNS +1 )) "(${prompt_cyan}$(git branch 2>/dev/null | grep '^*' | sed s/..//)${prompt_reset}) $(date +%H:%M:%S)" "[ ${prompt_bold}${prompt_white}\u${prompt_reset}@\h${prompt_bold}:${prompt_green}\w${prompt_reset} ] \n> ")'
set -b
