alias find_deployment='cd /opt/python/current'
alias requirements='pip install -r requirements.txt'
alias source_env='source /opt/python/current/env'
alias source_venv='source /opt/python/run/venv/bin/activate'
alias ll='ls -al --color'


if command_exists thefuck ; then
  eval $(thefuck --alias)
fi


alias pgadmin="python3 $HOME/.local/share/virtualenvs/server-kE6b1NDp/lib/python3.6/site-packages/pgadmin4/pgAdmin4.py &"

alias tl="bundle exec testrbl -I test"
alias br='bundle exec rake'
alias tu='bin/testunit '
alias be='bundle exec'
alias rc='rubocop --auto-correct'

alias ssh-agent='sudo eval `ssh-agent -s`'

alias tm='tmuxinator'
