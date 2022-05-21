set -o vi

_display_datetime() {
    local dt="$(date '+%H:%M %Y-%m-%d')"
    echo "[$dt]"
}

_git_prompt() {
  local ref="$(command git symbolic-ref -q HEAD 2>/dev/null)"
  if [ -n "$ref" ]; then

    local repo="$(command git config --local --get remote.origin.url | sed 's/.*\.com\///' | sed 's/\.git$//')"
    echo " ${repo} @ (${ref#refs/heads/})"
  fi
}

export PS1='\[\e[0;36m\]$(_display_datetime) \[\e[0;32m\][$(whoami)]\[\e[0;33m\]$(_git_prompt) \[\e[m\]$ '

alias recent-branches='git for-each-ref --sort=-committerdate --count=10 --format="%(refname:short)" refs/heads/'
