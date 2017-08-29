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

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
