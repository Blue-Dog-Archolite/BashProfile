# Setup fzf
# ---------
if [[ ! "$PATH" == $HOME/.vim/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="$PATH:$HOME/.vim/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.vim/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.vim/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"
