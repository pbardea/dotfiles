[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH="/Users/pbardea/scala/bin:$PATH"
export EDITOR=$(which vi)

set -o vi

export PATH=/usr/local/bin:$PATH
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/directory-you-do-development-in"
# 
# # MacPorts Installer addition on 2012-05-23_at_16:56:01: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# # Finished adapting your PATH environment variable for use with MacPorts.
# 
# #go
# export GOPATH=$HOME/code/current/go
# 
# export PATH=/Users/pbardea/scala/bin:$PATH

#prompt
export PS1="\w$ "

#history
export HISTSIZE=10000
shopt -s histappend

#dislin
# DISLIN=directory                     
# export DISLIN
# PATH=${PATH}:${DISLIN}/bin

DYLD_LIBRARY_PATH=$DISLIN:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH
export PYTHONPATH=$DISLIN/python

#alises
alias webstart='python -m SimpleHTTPServer'
alias ll='ls -l'
alias la='ls -A'
alias rmdir='rm -r'
alias cpdir='cp -r'

alias conLab='ssh pabardea@linux.student.cs.uwaterloo.ca'
alias vim='mvim'
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim" #use the macvim shell

alias search=grep
alias rake='bundle exec rake'

# 
# # MacPorts Installer addition on 2013-10-10_at_09:52:53: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# # Finished adapting your PATH environment variable for use with MacPorts.
# 
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
# 
# export PATH=/Applications/B1FreeArchiver.app/Contents/MacOS:$PATH
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
# 
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

#moving around
alias back='cd $OLDPWD'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

## Dir shortcuts
alias home='cd ~/'
alias documents='cd ~/Documents'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias code='cd ~/code'
alias gotoCS="cd ~/Google\ Drive/1B/CS138"

msg() {
  cd ~/Applications/imessageclient/;
  node app
}


export CLICOLOR=1
export LSCOLORS=FxGxBxDxCxEgEdxbxgxcxd
alias ls="ls -Fh"

#jekyll stuff
alias jserve="jekyll serve"
alias jwatch="jekyll serve --watch"
alias jbuild="jekyll build"

#fun stuff
alias hack='cmatrix'
alias oldSchool='open ~/Applications/cool-retro-term/cool-retro-term.app'

##
# Your previous /Users/pbardea/.bash_profile file was backed up as /Users/pbardea/.bash_profile.macports-saved_2015-01-07_at_08:04:00
##

# MacPorts Installer addition on 2015-01-07_at_08:04:00: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

