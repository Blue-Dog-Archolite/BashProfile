# Setup fzf
# ---------
if [[ ! "$PATH" == */home/rmeyer/.linuxbrew/opt/fzf/bin* ]]; then
  export PATH="$PATH:/home/rmeyer/.linuxbrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/rmeyer/.linuxbrew/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/rmeyer/.linuxbrew/opt/fzf/shell/key-bindings.bash"

