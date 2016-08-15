# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#if [! -z "$PS1" ] ; then

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#xterm-color)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#    ;;
#*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#    ;;
#esac

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

parse_svn_branch() {
  parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk -F / '{print "(svn::"$1 "/" $2 ")"}'
}

parse_svn_url() {
  svn info 2>/dev/null | grep -e '^URL*' | sed -e 's#^URL: *\(.*\)#\1#g '
}

parse_svn_repository_root() {
  svn info 2>/dev/null | grep -e '^Repository Root:*' | sed -e 's#^Repository Root: *\(.*\)#\1\/#g '
}

parse_node_version(){
  version_string=$(node --version)
  echo "Node#$version_string"
}

parse_language_prompt(){
  if [ ! $(parse_ruby_prompt) = 'system' ]; then
    echo $(prase_ruby_prompt)
  else
    echo $(parse_node_version)
  fi
}

parse_ruby_prompt(){
  version_string=$(rbenv version-name)
  [ -f "$(pwd)/.rbenv-gemsets" ] && gemset_string=" ⟡ $(rbenv gemset active | cut -d' ' -f1)"
  if [ ! $version_string = '' ]; then
    echo "$version_string$gemset_string"
  fi

  if [ -d "$HOME/.rvm" ]; then
    # Control will enter here if $DIRECTORY exists.
    rvm_prompt=$(~/.rvm/bin/rvm-prompt)
    if [ rvm_prompt ]; then
      echo "$rvm_prompt"
    fi
  fi
}

export PS1="\n\n$USER:\w\[\033[31m\]\n\$(parse_git_branch)\n\[\033[31m\]\$(parse_language_prompt)\[\033[00m\]:: \[\033[00m\]$\[\033[00m\] "

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

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

if [ -f ~/.rvm/scripts/rvm ]; then
  . ~/.rvm/scripts/rvm
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
 . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
     . $(brew --prefix)/etc/bash_completion
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#source ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
export NODE_ENV=development

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(rbenv init -)"

source "$(brew --prefix nvm)/nvm.sh"

eval "$(grunt --completion=bash)"
