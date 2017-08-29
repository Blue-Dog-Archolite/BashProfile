#!/bin/bash

command_exists () {
  type "$1" &> /dev/null ;
}

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
  if command_exists node ; then
    version_string=$(node --version)
    echo "\[\033[38;5;2m\]Node λ $version_string"
  else
    echo "\[\033[38;5;1m\]Node λ not installed"
  fi
}


parse_language_prompt(){
  if command_exists rbenv ; then
    echo $(parse_ruby_prompt)
  else
    echo '\[\033[38;5;1m\]rbenv ⟡ not installed'
  fi

  if command_exists nvm ; then
    echo $(parse_node_version)
  else
    echo '\[\033[38;5;1m\]nvm λ not installed'
  fi
}

parse_ruby_prompt(){
  if command_exists rbenv ; then
    version_string=$(rbenv version-name)
    [ -f "$(pwd)/.rbenv-gemsets" ] && gemset_string=" ⟡ $(rbenv gemset active | cut -d' ' -f1)"
    if [ ! $version_string = '' ]; then
      echo "\[\033[38;5;2m\]rbenv ⟡ $version_string$gemset_string"
    fi

    if [ -d "$HOME/.rvm" ]; then
      # Control will enter here if $DIRECTORY exists.
      rvm_prompt=$(~/.rvm/bin/rvm-prompt)
      if [ rvm_prompt ]; then
        echo "\[\033\[38;5;2m\]$rvm_prompt"
      fi
    fi
  fi
}


function cd {
  builtin cd "$@"
    if [ -f "Pipfile" ] ; then
        vactivate
    fi
}
