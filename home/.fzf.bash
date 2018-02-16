# Setup fzf
# ---------
if [[ ! "$PATH" == $HOME/.vim/dein/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="$PATH:$HOME/.vim/dein/repos/github.com/junegunn/fzf/bin"
fi

# Auto-completion
# ---------------
if [[ ! "$PATH" == $HOME/.vim/dein/repos/github.com/junegunn/fzf/shell* ]]; then
  [[ $- == *i* ]] && source "$HOME/.vim/dein/repos/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null
fi

# Key bindings
# ------------
if [[ ! "$PATH" == $HOME/.vim/dein/repos/github.com/junegunn/fzf/sell* ]]; then
  source "$HOME/.vim/dein/repos/github.com/junegunn/fzf/shell/key-bindings.bash"
fi
