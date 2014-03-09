[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH="/Users/your_user/scala/bin:$PATH"

set -o vi

##
# Your previous /Users/paul.bardea/.bash_profile file was backed up as /Users/paul.bardea/.bash_profile.macports-saved_2012-05-23_at_16:56:01
##

# MacPorts Installer addition on 2012-05-23_at_16:56:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

export PATH=/Users/paul.bardea/scala/bin:$PATH

#prompt
export PS1="\w$ "

#history
export HISTSIZE=10000
shopt -s histappend

#dislin
DISLIN=directory                     
export DISLIN
PATH=${PATH}:${DISLIN}/bin

DYLD_LIBRARY_PATH=$DISLIN:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH
export PYTHONPATH=$DISLIN/python

#alises
alias webstart='python -m SimpleHTTPServer'
alias ll='ls -l'
alias search=grep
alias ..='cd ..'
alias ...='cd ../..'
alias rake='bundle exec rake'

##
# Your previous /Users/paul.bardea/.bash_profile file was backed up as /Users/paul.bardea/.bash_profile.macports-saved_2013-10-10_at_09:52:53
##

# MacPorts Installer addition on 2013-10-10_at_09:52:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=/Applications/B1FreeArchiver.app/Contents/MacOS:$PATH
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
