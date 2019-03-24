export PATH="/home/$USER/.bin:$PATH"

stty -ixon
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

# rvm env warning supress flag
rvm_silence_path_mismatch_check_flag=1
source /usr/share/bash-completion/completions/git

# TMUX autorun
_not_inside_tmux() {
  [[ -z "$TMUX" ]]
}

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running

# git status on bash prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_status() {
  status_porcelain="$(git status --porcelain 2> /dev/null)"
  stash=$([[ `git stash list 2> /dev/null` ]] && echo -n "$")

  if [[ $(grep "^[^??]" <<< $status_porcelain ) ]]; then
    status=$(echo "*")
  elif [[ $(grep "^?? [^\.]" <<< $status_porcelain ) ]]; then
    status=$(echo "+")
  fi

  [[ $status || $stash ]] && echo "[$stash$status]"
}


export PS1="\[\e[32m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[91m\]\$(git_status)\[\e[m\]: "

bind TAB:menu-complete
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
[[ -s "/home/$USER/.bash/aliases" ]] && source "/home/$USER/.bash/aliases"
[[ -s "/home/$USER/.bash/func" ]] && source "/home/$USER/.bash/func"

# bash fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
