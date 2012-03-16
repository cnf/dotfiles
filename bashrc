# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.bash/vars
source ~/.bash/i10n
source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/prompt
source ~/.bash/config
source ~/.bash/3rdparty

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
