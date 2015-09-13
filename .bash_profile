# Set up path
# export PATH=/usr/local/bin:$PATH
# export ANDROID_HOME=~/Library/Android/sdk/
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/platform-tools:$PATH

#Set default editor to vim (the instance found in MacVim)
export EDITOR=$(which mvim)

#Set command line editor to be vi
set -o vi

########## COLOURS ################
green="\[\033[0;32m\]"
red="\[\033[0;31m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
yellow="\[\033[0;33m\]"
reset="\[\033[0m\]"

########## PROMPT ################
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\w$green\$(__git_ps1)$reset $ "

# Enable tab completion
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# History
alias h?="history | grep"
export HISTSIZE=10000
shopt -s histappend

alias webstart='python -m SimpleHTTPServer'
# ls aliases
alias ls='ls'
alias ll='ls -lh'
alias la='ls -lA'
alias l='ls'

alias conLab='ssh pabardea@linux.student.cs.uwaterloo.ca'
alias vim='mvim'

alias search=grep

# Rails
alias rake='bundle exec rake'

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
alias docs='cd ~/Documents'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias dev='cd ~/Developer'
alias gotoCS="cd ~/Google\ Drive/Waterloo/2A/CS241"
alias 2a="cd ~/Google\ Drive/Waterloo/2A"

export LSCOLORS=Cxfxexdxbxegedabagacad

#jekyll stuff
alias jserve="jekyll serve"
alias jwatch="jekyll serve --watch"
alias jbuild="jekyll build"

#fun stuff
alias hack='cmatrix'
alias oldSchool='open ~/Applications/cool-retro-term/cool-retro-term.app'

# get internet speed
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'

# get external ip
alias extip='curl icanhazip.com'

# print the current time
alias now='date +%T'

# git/github
alias git='hub'
alias 'git-ammend'='git commit --ammend -C HEAD'
alias 'git-undo'='git reset --soft HEAD^'
