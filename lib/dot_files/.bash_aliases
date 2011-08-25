#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'
alias vi=vim

alias scp='rsync -e ssh -rlzvP'


if [ "$OSTYPE" == 'linux-gnu' ]
  then
  alias ctags='/usr/bin/ctags'
  alias vim=gvim
else
  alias ctags='/opt/local/bin/ctags'
  alias vim=mvim
  alias updatedb="sudo /usr/libexec/locate.updatedb"
fi


alias ct="ctags -R --exclude=*.js . `gem env path | sed 's/:/ /g'`"


#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='rspec -d '

#"rake tasks
alias migrate="rake db:migrate -trace"
alias migrate_all='rake db:migrate --trace && rake db:migrate RAILS_ENV=test --trace'

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'

#Show all files and folders for mac
alias show_all="defaults write com.apple.Finder AppleShowAllFiles YES"
alias hide_special="defaults write com.apple.Finder AppleShowAllFiles NO"

#more stupid mac stuff
alias reset_keyboard='sudo open /System/Library/CoreServices/KeyboardSetupAssistant.app/Contents/MacOS/Keyboard SetupAssistant'

alias rvm-restart='source '\''/Users/rmeyer/.rvm/scripts/rvm'\'''
alias scp='rsync -e ssh -rlzvP'

#OpenChime stuff
alias seed_openchime='cd ~/dev/ruby/openchime && heroku pgbackups:capture --expire && curl -o latest.dump  && pg_restore --verbose --clean --no-acl --no-owner  -d openchime_dev latest.dump'

alias start_reddis='redis-server /usr/local/etc/redis.conf'
alias tail_nginx='tail -fn0 /usr/local/Cellar/nginx/1.0.4/logs/*'
alias tail_postgres='tail -f /usr/local/var/postgres/server.log'


