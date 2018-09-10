# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi


if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_path ]; then
  . ~/.bash_path
fi

if [ -f ~/.bash_env ]; then
  . ~/.bash_env
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

if [ -f ~/.bash_activations ]; then
  . ~/.bash_activations
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi
