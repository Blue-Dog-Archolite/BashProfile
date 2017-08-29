# Setup fzf
# ---------
if [[ ! "$PATH" == */home/thief/tools/BashProfile/dot_files/.vim/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="$PATH:/home/thief/tools/BashProfile/dot_files/.vim/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/thief/tools/BashProfile/dot_files/.vim/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/thief/tools/BashProfile/dot_files/.vim/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"

