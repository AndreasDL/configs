#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
 
# Epoch time conversion
epoch() {
  TESTREG="[\d{10}]"
  if [[ "$1" =~ $TESTREG ]]; then
    # is epoch
    date -d @$*
  else
    # is date
    if [ $# -gt 0 ]; then
      date +%s --date="$*"
    else
      date +%s
    fi
  fi
}

PS1='[\W] -> '

export EDITOR="vim";

HISTIGNORE="cd:ls:ll:dir:clear:exit";
