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
export GOPATH=$HOME/code/current/go

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
alias la='ls -A'

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

# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}


alias reload='source ~/.bash_profile'

## Moving around & all that jazz
alias back='cd $OLDPWD'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

## Dir shortcuts
alias home='cd ~/'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias code='cd ~/code'

alias edit='vim'

export CLICOLOR=1
export LSCOLORS=FxGxBxDxCxEgEdxbxgxcxd
alias ls="ls -Fh"

#jekyll stuff
alias jserve="jekyll serve"
alias jwatch="jekyll serve --watch"
alias jbuild="jekyll build"

##
# Your previous /Users/pbardea/.bash_profile file was backed up as /Users/pbardea/.bash_profile.macports-saved_2014-06-26_at_09:58:36
##

# MacPorts Installer addition on 2014-06-26_at_09:58:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
