#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'
alias ls='ls --color=auto'
alias vi=vim
alias gti='git'
alias vm='vagrant'
alias cd_dev='cd ~/dev/ruby/avant/basic'

alias scp='rsync -e ssh -rlzvP'


if [ "$OSTYPE" == 'linux-gnu' ]
  then
  alias ctags='/usr/bin/ctags'
  alias vim=gvim
  alias start_reddis='redis-server /home/thief/tools/redis-stable/redis.conf'
  alias redis_cli='redis-cli -a "WWsv_|(-zp0?[k]Kmqd5.~,qL="'
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
alias rsp='rspec -drb '

#Deploy
alias deploy_staging_with_branch="cap staging -s branch='$1' deploy"

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

alias start_reddis='redis-server /usr/local/etc/redis.conf'
alias verbose_worker='QUEUE=* VVERBOSE=1 VERBOSE=1 bundle exec rake resque:work --trace'
alias empty_redis='rm -rf /usr/local/var/db/redis/*'

alias bounce_god="cd ~/dev/ruby/dabble/relaunch && god terminate && god -c confing/god/spork_start.god"

alias seed_test='bundle exec rake db:test:load'

#mysql help
alias mysql_info="mysqladmin variables"
