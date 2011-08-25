#!/usr/bin/env bash

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'

alias scp='rsync -e ssh -rlzvP'

alias vi=vim
alias vim=gvim

if [ "$OSTYPE" == 'linux-gnu' ]
  then
  alias ctags='/usr/bin/ctags'
else   
  alias ctags='/opt/local/bin/ctags'
  alias updatedb="sudo /usr/libexec/locate.updatedb"
fi


alias ct="ctags -R --exclude=*.js . `gem env path | sed 's/:/ /g'`"


#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'

#"rake tasks
alias migrate="rake db:migrate -trace"

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'

#"Other
alias activemq='/opt/apache/apache-activemq-5.3.0/bin/activemq'

# Cuttlefish managment stuff
alias cuttlefish_log="tail -fn0 ~/Sites/cuttlefish/{cms,api,listerine,zoozag}/log/* &"

alias bounce_cuttlefish="stop_cuttlefish && start_cuttlefish"


#Show all files and folders for mac
alias show_all="defaults write com.apple.Finder AppleShowAllFiles YES"
alias hide_specia="defaults write com.apple.Finder AppleShowAllFiles NO"
