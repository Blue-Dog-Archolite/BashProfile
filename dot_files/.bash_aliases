#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'
alias ls='ls --color=auto'
alias gti='git'
alias vm='vagrant'

alias vi=vim
alias vim=nvim

alias edit=vim
alias fix_reslove='sudo cp /etc/resolv.conf.bak /etc/resolv.conf'

alias start_eclim='. /opt/eclipse/eclimd'

alias scp='rsync -e ssh -rlzvP'
alias ctags='/usr/bin/ctags'
alias ct="ctags -R --exclude=*.js . `echo $GEM_HOME| sed 's/:/ /g'`"

#"Rails
alias start_reddis='redis-server /home/thief/tools/redis-stable/redis.conf'
alias seed_test='bundle exec rake db:test:load'

#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='rspec -drb '

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'
alias commit_and_push='git commit -m $1 && git pull && git push origin'
alias git_show_branch_history="git reflog show --no-abbrev $1" #Will show the branch history and take one argument

#tail
alias tail_log='tail -fn0 log/*.log'

#mysql help
alias mysql_info="mysqladmin variables"

#Liveworld Logstash
alias start_logstash="cd ~/tools/logstash/ && ./bin/logstash -f ../conf/logstash-liveworld.conf"
