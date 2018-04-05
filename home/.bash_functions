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

# function vim {
#   path_to_executable=$(which nvim)

#   if [ -x "$path_to_executable" ] ; then
#     /usr/bin/nvim "$@"
#   else
#     /usr/bin/vim "$@"
#   fi
# }

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
