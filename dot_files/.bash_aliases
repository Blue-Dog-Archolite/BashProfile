#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls='ls -GCF'
else
  alias ls='ls -al --color=auto'
fi

alias vm='/opt/vagrant/bin/vagrant'
alias pgs='ps aux | grep $@'

eval "$(thefuck --alias ffs)"
eval "$(thefuck --alias fuck)"

alias vi=/usr/bin/vi
alias vim=nvim

alias vm='vagrant'

alias edit=vim
alias fix_resolve='sudo cp /etc/resolv.conf.bak /etc/resolv.conf'

alias scp='rsync -e ssh -rlzvP'
alias ctags='/usr/bin/ctags'
alias ct = "ctags -R --exclude=$HOME.ctags ."

alias ag='ag --path-to-agignore ~/.agignore'

#"Rails
alias start_reddis='redis-server /home/thief/tools/redis-stable/redis.conf'
alias seed_test='bundle exec rake db:test:load'

#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='RAILS_ENV=test bundle exec rspec '

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'
alias commit_and_push='git commit -m $1 && git pull && git push origin'
alias git_show_branch_history="git reflog show --no-abbrev $1" #Will show the branch history and take one argument
alias clean_branch="find . -name '*.orig' -delete"

#tail
alias tail_log='tail -fn0 log/*.log'

#mysql help
alias mysql_info="mysqladmin variables"

alias lwssh="ssh -i ~/.ssh/symondandson_id_rsa rmeyer@$@"

#sudo
alias act_as="sudo sudo -u $@ bash -i"

#Python
alias vactivate="pipenv shell"

# Angular CLI
alias build_angular="ng build --output-path ../backend/static/ang/ --watch --output-hashing none"
alias build_angular_production="ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none"

# PGAdmin
alias pgadmin4="python3 /home/thief/.local/share/virtualenvs/server-llK42MpH/lib/python3.5/site-packages/pgadmin4/pgAdmin4.py"
