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
  alias start_reddis='redis-server /etc/redis.conf'
  alias set_left='xrandr --output VGA2 --left-of LVDS2'
else
  #Fuck you mac
  alias ctags='/usr/local/bin/ctags'
  alias start_reddis='redis-server /usr/local/etc/redis.conf'
  alias vim=mvim
  alias updatedb="sudo /usr/libexec/locate.updatedb"
fi


alias ct="ctags -R --exclude=*.js . `echo $GEM_HOME| sed 's/:/ /g'`"

#Stupid unset issues due to RVM
function mvim()
 {
    # spawn a sub-shell, unset environment variables for the sub-shell, start mvim. 
    (unset GEM_PATH GEM_HOME; command mvim "$@")
 }


#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='rspec -d '

#"rake tasks
alias migrate="rake db:migrate -trace"
alias migrate_all='rake db:migrate --trace && rake db:migrate RAILS_ENV=test --trace'
alias watch_sass='sass --watch app/assets/stylesheets/sass/:app/assets/stylesheets/'

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'
alias commit_and_push='git commit -m $1 && git pull && git push origin'

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
alias empty_redis='rm -rf /usr/local/var/db/redis/*'
alias tail_nginx='tail -fn0 /usr/local/Cellar/nginx/1.0.4/logs/*'
alias tail_postgres='tail -f /usr/local/var/postgres/server.log'
alias start_pgsql='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

alias jenkins='ssh deploy@ec2-107-20-241-229.compute-1.amazonaws.com'
alias seed_test='bundle exec rake db:test:load'

alias start_workers='cd ~/dev/ruby/openchime/ && bundle exec rake resque:work'
