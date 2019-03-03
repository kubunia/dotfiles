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
[[ -s "/home/$USER/.bash_aliases" ]] && source "/home/$USER/.bash_aliases"

# bash fuzzy search
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git alias function with default param
g() {
  if [[ $# -eq 0 ]] ; then
    git status -s
  else
    git $@
  fi
}

# git clean with confirmation
gcl() {
  if [[ $# -eq 0 ]] ; then
    if [[ $(git clean -n) ]] ; then
      git clean -n
      read -p "Are you sure? " -n 1 -r
      echo
      if [[ ! $REPLY =~ ^[Yy]$ ]] ; then
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
      fi
    else
      echo "Nothing to clean"
    fi
    git clean -f
  else
    git clean -f $@
  fi
}

# ALIASES

alias c='clear'

# xclip clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# colorize grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# git aliases
alias ga="git add"
alias gaa="git add *"
alias gc="git commit -m"
alias gca="git commit --all -m"
alias gcan="git commit --amend --no-edit"
alias gph="git push"
alias gpl="git pull"
alias go="git checkout"
alias gob="git checkout -b"
alias gr="git reset"
alias gl="git log --pretty=format:\"%C(yellow)%h %Creset%s %C(cyan)%ad%Cred%d%Cblue [%cn]\" --decorate --date=short"
alias gs="git stash"
alias gsu="git stash -u"
alias gsp="git stash pop"
alias gb="git branch"

# list git aliases
alias galias="alias | grep git | grep -v galias | cut -d ' ' -f 2- | sed '/=/s//|/' | tr \"'\" \" \" | column -s \"|\" -t"

# git aliases autocompletion
__git_complete g __git_main
__git_complete ga _git_add
__git_complete gc _git_commit
__git_complete gca _git_commit
__git_complete gph _git_push
__git_complete gpl _git_pull
__git_complete go _git_checkout
__git_complete gr _git_reset
__git_complete gs _git_stash

