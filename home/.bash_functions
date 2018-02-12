#!/bin/bash

command_exists () {
  type "$1" &> /dev/null ;
}

function vactivate {
  if command_exists pipenv; then
    pipenv shell
  elif [ -d /opt/python/run/venv ]; then
    source /opt/python/run/venv/bin/activate
  fi
}


function cd {
  builtin cd "$@"
  if [ -f "Pipfile" ] ; then
    vactivate
  elif [ -f "requirements.txt" ] ; then
    vactivate
  fi
}

function vim {
  path_to_executable=$(which nvim)

  if [ -x "$path_to_executable" ] ; then
    /usr/bin/nvim "$@"
  else
    /usr/bin/vim "$@"
  fi
}
