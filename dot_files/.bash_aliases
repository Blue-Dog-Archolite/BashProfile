#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'
#alias ls='ls --color=auto'
alias gti='git'
alias vm='/opt/vagrant/bin/vagrant'
alias pgs='ps aux | grep $@'

eval "$(thefuck --alias fuck)"

alias vi=vim
#alias vim=nvim

alias edit=vim
alias fix_resolve='sudo cp /etc/resolv.conf.bak /etc/resolv.conf'

alias start_eclim='. /home/thief/.eclipse/org.eclipse.platform_793567567_linux_gtk_x86_64/eclimd'

alias scp='rsync -e ssh -rlzvP'
alias ctags='/usr/bin/ctags'
alias ct="ctags -R --exclude=*.js . `echo $GEM_HOME| sed 's/:/ /g'`"

alias ag='ag --path-to-agignore ~/.agignore'

#"Rails
alias start_reddis='redis-server /home/thief/tools/redis-stable/redis.conf'
alias seed_test='bundle exec rake db:test:load'

#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='RAILS_ENV=test bundle exec rspec '
alias clean_branch="find . -name '*.orig' -delete"
alias update_locate='sudo /usr/libexec/locate.updatedb'

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'
alias commit_and_push='git commit -m $1 && git pull && git push origin'
alias git_show_branch_history="git reflog show --no-abbrev $1" #Will show the branch history and take one argument

#tail
alias tail_log='tail -fn0 log/*.log'

#mysql help
alias mysql_info="mysqladmin variables"

alias lwssh="ssh -i ~/.ssh/symondandson_id_rsa rmeyer@$@"

#sudo
alias act_as="sudo sudo -u $@ bash -i"
