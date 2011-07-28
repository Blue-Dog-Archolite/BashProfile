#"System
alias reset_keyboard="sudo open /System/Library/CoreServices/KeyboardSetupAssistant.app/Contents/MacOS/Keyboard SetupAssistant"
alias updatedb="sudo /usr/libexec/locate.updatedb"

#"Term
alias ll='clear && ls -Gal'
alias la='ls -GA'
alias l='ls -GCF'

alias scp='rsync -e ssh -rlzvP'
alias vi=vim

if [[ "$OSTYPE" == 'linux-gnu' ]]; then
  alias vim=gvim 
else
  alias vim=mvim
fi

alias ctags='/usr/local/bin/ctags'
alias ct="ctags -R --exclude=*.js . `gem env path | sed 's/:/ /g'`"

#"Ruby
alias all_tests="s cu -f progress --tags ~@wip"
alias rtest='ruby -I"lib:test"'
alias rsp='rspec -d '

#"rake tasks
alias migrate="rake db:migrate --trace"
alias migrate_all="rake db:migrate --trace && rake db:migrate RAILS_ENV=test --trace"

#"Git
alias git_history="git fsck --lost-found | awk '{print \"git show \" $3}' | bash | less"
alias mkpatch='git format-patch -o ~/Desktop/ origin'
alias branch_project="cd ~/dev/ruby/openchime && git checkout master && git pull && git push origin origin:refs/heads/lh#$1 && git fetch origin && git checkout --track -b lh#$1 origin/lh#$1"

#Show all files and folders for mac
alias show_all="defaults write com.apple.Finder AppleShowAllFiles YES"
alias hide_special="defaults write com.apple.Finder AppleShowAllFiles NO"

#Mac start shit
alias tail_nginx="tail -fn0 /usr/local/Cellar/nginx/1.0.4/logs/*"
alias tail_postgres="tail -f /usr/local/var/postgres/server.log"


#OpenChime seed
alias seed_openchime="cd ~/dev/ruby/openchime && heroku pgbackups:capture --expire && curl -o latest.dump `heroku pgbackups:url` && pg_restore --verbose --clean --no-acl --no-owner  -d openchime_dev latest.dump"
alias start_reddis="redis-server /usr/local/etc/redis.conf"
