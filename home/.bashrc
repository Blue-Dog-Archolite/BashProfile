# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_path ]; then
  . ~/.bash_path
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

if [ -f ~/.bash_env ]; then
  . ~/.bash_env
fi

if [ -f ~/.bash_activations ]; then
  . ~/.bash_activations
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
