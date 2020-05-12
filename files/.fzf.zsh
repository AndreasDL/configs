# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vm/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/vm/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/vm/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/vm/.fzf/shell/key-bindings.zsh"
