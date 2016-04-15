# Set up path
# export PATH=/usr/local/bin:$PATH
# export ANDROID_HOME=~/Library/Android/sdk/
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/platform-tools:$PATH

#Set default editor to vim (the instance found in MacVim)
export EDITOR=$(which mvim)
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export MYSQL_HOME=/usr/local/mysql
alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'

# Go
export GOPATH=/Users/pbardea/go/
export PATH=$GOPATH/bin:$PATH

#Set command line editor to be vi
set -o vi

########## COLOURS ################
green="\033[0;32m"
red="\033[0;31m"
blue="\033[0;34m"
purple="\033[0;35m"
yellow="\033[0;33m"
reset="\033[0m"


# jokes
function joke {
  json=`curl -s 'http://www.davepagurek.com/badjokes/joke/'`
  q=`echo $json | jsawk 'return this.q' | perl -MHTML::Entities -e 'while(<>) {print decode_entities($_);}'`
  a=`echo $json | jsawk 'return this.a' | perl -MHTML::Entities -e 'while(<>) {print decode_entities($_);}'`

  if [ "$q" != "" ];then
    echo -e "Q:$blue $q$reset\nA:$purple $a$reset"
  fi
}


# Transfer files
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 


########## PROMPT ################
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
#
# export PS1="$red\w$green\$(__git_ps1)$reset % "
#
_dir_chomp () {
  local IFS=/ c=1 n d
    local p=(${1/#$HOME/\~}) r=${p[*]}
  local s=${#r}
  while ((s>$2&&c<${#p[*]}-1))
    do
      d=${p[c]}
    n=1;[[ $d = .* ]]&&n=2
      ((s-=${#d}-n))
      p[c++]=${d:0:n}
    done
      echo "${p[*]}"
}

main='\[\033[01;34m\]$(
  _dir_chomp "$(pwd)" 20
  )\[\033[01;31m\]$(__git_ps1)\[\033[01;34m\]\[\033[00m\]'

export PS1="$main\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\` → $reset"; 

# Enable tab completion
source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

# History
alias h?="history | grep"
alias lsr="find . -name"
export HISTSIZE=10000
shopt -s histappend

alias webstart='python -m SimpleHTTPServer'
# ls aliases
alias ls='ls'
alias ll='ls -lh'
alias la='ls -lA'
alias l='ls'

alias conLab='ssh cs'
alias guiLab='ssh -y cs'
alias vim='mvim'

alias search=grep

# Rails
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias test='bundle exec rspec'

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
alias rld='source ~/.bash_profile'

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
alias 2b="cd ~/Google\ Drive/Waterloo/2B"

export CLICOLOR=1
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
alias extIp='curl icanhazip.com'

# print the current time
alias now='date +%T'

# git/github
alias git='hub'

# play framework.
alias play='activator'
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"
