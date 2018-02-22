# Setup fzf
# ---------
if [[ ! "$PATH" == $HOME/tools/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="$PATH:$HOME/tools/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
if [[ ! "$PATH" == $HOME/tools/dein/repos/github.com/junegunn/fzf/shell* ]]; then
  [[ $- == *i* ]] && source "$HOME/tools/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null
fi

# Key bindings
# ------------
if [[ ! "$PATH" == $HOME/tools/dein/repos/github.com/junegunn/fzf/sell* ]]; then
  source "$HOME/tools/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"
fi
