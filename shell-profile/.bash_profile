# rvm generated block

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git info in prompt
source ~/.git-prompt.sh


PS1='[\[\033[37m\]\u@\h:\[\033[36m\]\W\[\033[33m\]$(__git_ps1 " (%s)")\[\033[00m\]] \$ '

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto

alias be="bundle exec"
alias gpl="git pull"
alias profile='vim ~/.bash_profile'
alias src-profile='source ~/.bash_profile'


function gcm {
  git commit -m "$1"
}

function gp {
  git push 2> git-push-results.txt
  if [[ $? != 0 ]];
  then
    gpCommand=$(tail -n 2 git-push-results.txt | head -n 1)
    echo "gpCommand is $gpCommand"
    eval $gpCommand
    rm -f git-push-results.txt
  fi
  rm -f git-push-results.txt
}

function ps1 {
  PS1='[\[\033[37m\]\u@\h:\[\033[36m\]\W\[\033[33m\]$(__git_ps1 " (%s)")\[\033[00m\]] \$ '
}

function vimmode {
  set -o vi
}

function emacsmode {
  set -o emacs
}

# Sets title of terminal
function title {
  printf "\033]0;%s\007" "$1"
  PS1='['"$1"':\[\033[36m\]\W\[\033[33m\]$(__git_ps1 " (%s)")\[\033[00m\]] \$ '
}

function week-number {
  date +%V
}

