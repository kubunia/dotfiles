export PATH="/home/$USER/.bin:$PATH"

stty -ixon
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

# rvm env warning supress flag
rvm_silence_path_mismatch_check_flag=1
source /usr/share/bash-completion/completions/git

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
[[ -s "/home/$USER/.bash/aliases" ]] && source "/home/$USER/.bash/aliases"
[[ -s "/home/$USER/.bash/func" ]] && source "/home/$USER/.bash/func"

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history"
shopt -s cmdhist
shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

ensure_tmux_is_running

export PS1="\[\e[32m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[91m\]\$(git_status)\[\e[m\]: "

bind TAB:menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# bash fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
