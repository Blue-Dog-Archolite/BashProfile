# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_path ]; then
  . ~/.bash_path
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

if [ -f ~/.bash_env ]; then
  . ~/.bash_env
fi

if [ -f ~/.bash_activations ]; then
  . ~/.bash_activations
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Comment in the above and uncomment this below for a color prompt
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# branch="\n\n\w\[\033[38;5;81m\] \$(parse_git_branch)"
# languages="$(parse_language_prompt)"
# user="\[\033[00m\]$USER :: \[\033[00m\]$\[\033[00m\] "

# export PS1="$branch\n$languages\n$user"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
###-begin-ng-completion###
#

# # ng command completion script
# #   This command supports 3 cases.
# #   1. (Default case) It prints a common completion initialisation for both Bash and Zsh.
# #      It is the result of either calling "ng completion" or "ng completion -a".
# #   2. Produce Bash-only completion: "ng completion -b" or "ng completion --bash".
# #   3. Produce Zsh-only completion: "ng completion -z" or "ng completion --zsh".
# #
# # Usage: . <(ng completion --bash) # place it appropriately in .bashrc or
# #        . <(ng completion --zsh) # find a spot for it in .zshrc
# #
# _ng_completion() {
#   local cword pword opts

#   COMPREPLY=()
#   cword=${COMP_WORDS[COMP_CWORD]}
#   pword=${COMP_WORDS[COMP_CWORD - 1]}

#   case ${pword} in
#     ng|help) opts="--version -v b build completion doc e e2e eject g generate get help l lint n new s serve server set t test v version xi18n" ;;
#     b|build) opts="--aot --app --base-href --delete-output-path --deploy-url --environment --extract-css --extract-licenses --i18n-file --i18n-format --locale --output-hashing --output-path --poll --preserve-symlinks --progress --sourcemaps --stats-json --target --vendor-chunk --verbose --watch -a -aot -bh -d -dop -e -ec -extractLicenses -i18nFile -i18nFormat -locale -oh -op -poll -pr -preserveSymlinks -sm -statsJson -t -v -vc -w" ;;
#     completion) opts="--all --bash --zsh -a -b -z" ;;
#     doc) opts="--search -s" ;;
#     e|e2e) opts="--aot --app --base-href --config --delete-output-path --deploy-url --disable-host-check --element-explorer --environment --extract-css --extract-licenses --hmr --host --i18n-file --i18n-format --live-reload --locale --open --output-hashing --output-path --poll --port --preserve-symlinks --progress --proxy-config --public-host --serve --sourcemaps --specs --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch --webdriver-update -H -a -aot -bh -c -d -disableHostCheck -dop -e -ec -ee -extractLicenses -hmr -i18nFile -i18nFormat -live-reload-client -locale -lr -o -oh -op -p -pc -poll -pr -preserveSymlinks -s -sm -sp -ssl -sslCert -sslKey -t -v -vc -w -wu" ;;
#     eject) opts="--aot --app --base-href --delete-output-path --deploy-url --environment --extract-css --extract-licenses --force --i18n-file --i18n-format --locale --output-hashing --output-path --poll --preserve-symlinks --progress --sourcemaps --target --vendor-chunk --verbose --watch -a -aot -bh -d -dop -e -ec -extractLicenses -force -i18nFile -i18nFormat -locale -oh -op -poll -pr -preserveSymlinks -sm -t -v -vc -w" ;;
#     g|generate) opts="--dry-run --lint-fix --verbose -d -lf -v" ;;
#     get) opts="--global -global" ;;
#     l|lint) opts="--fix --force --format --type-check -fix -force -format -typeCheck" ;;
#     n|new) opts="--directory --dry-run --inline-style --inline-template --link-cli --minimal --prefix --routing --skip-commit --skip-git --skip-install --skip-tests --source-dir --style --verbose -d -dir -is -it -lc -minimal -p -routing -sc -sd -sg -si -st -style -v" ;;
#     s|serve|server) opts="--aot --app --base-href --delete-output-path --deploy-url --disable-host-check --environment --extract-css --extract-licenses --hmr --host --i18n-file --i18n-format --live-reload --locale --open --output-hashing --output-path --poll --port --preserve-symlinks --progress --proxy-config --public-host --sourcemaps --ssl --ssl-cert --ssl-key --target --vendor-chunk --verbose --watch -H -a -aot -bh -d -disableHostCheck -dop -e -ec -extractLicenses -hmr -i18nFile -i18nFormat -live-reload-client -locale -lr -o -oh -op -p -pc -poll -pr -preserveSymlinks -sm -ssl -sslCert -sslKey -t -v -vc -w" ;;
#     set) opts="--global -g" ;;
#     t|test) opts="--app --browsers --code-coverage --colors --config --log-level --poll --port --progress --reporters --single-run --sourcemaps --watch -a -browsers -c -cc -colors -logLevel -poll -port -progress -reporters -sm -sr -w" ;;
#     --version|-v|v|version) opts="--verbose -verbose" ;;
#     xi18n) opts="--app --i18n-format --locale --out-file --output-path --progress --verbose -a -f -l -of -op -progress -verbose" ;;
#     *) opts="" ;;
#   esac

#   COMPREPLY=( $(compgen -W '${opts}' -- $cword) )

#   return 0
# }

# complete -o default -F _ng_completion ng
###-end-ng-completion###

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
