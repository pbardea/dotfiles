# Start flame war
alias vim=nvim
alias vi=nvim
export EDITOR=$(which nvim)

# Go
export GOPATH=~/Developer/go
export PATH=$GOPATH/bin:$PATH

# Set command line vi mode
set -o vi

########## COLOURS ################
green="\033[0;32m"
red="\033[0;31m"
blue="\033[0;34m"
purple="\033[0;35m"
yellow="\033[0;33m"
reset="\033[0m"

export CLICOLOR=1
export LSCOLORS=Cxfxexdxbxegedabagacad

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

# Prompt
POWERLINE_CONFIG='~/.config/powerline-shell/config.json'
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Enable tab completion
source ~/.git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

# History
alias h?="history | grep"
alias lsr="find . -name"
export HISTSIZE=10000
shopt -s histappend

# Aliases
alias reload='source ~/.bash_profile'
alias git=hub

# Moving around 
alias ls='ls'
alias ll='ls -lh'
alias la='ls -lA'
alias l='ls'
alias back='cd $OLDPWD'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias home='cd ~/'
alias docs='cd ~/Documents'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias dev='cd ~/Developer'
alias c='cd /Users/pbardea/Developer/Go/src/github.com/cockroachdb/cockroach'

alias conLab='ssh cs'
alias guiLab='ssh -y cs'

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

# Jekyll
alias jserve="jekyll serve"
alias jwatch="jekyll serve --watch"
alias jbuild="jekyll build"

# Fun
alias hack='cmatrix'
alias retro='open ~/Applications/cool-retro-term/cool-retro-term.app'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'
alias extIp='curl icanhazip.com'
alias now='date +%T'
alias scan='arp -an'
alias wtf='wtfutil'

# Ruby
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# opam configuration
test -r /Users/pbardea/.opam/opam-init/init.sh && . /Users/pbardea/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pbardea/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/pbardea/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pbardea/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/pbardea/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Cockroach
export CLUSTER="paul-test"
export PATH=$GOPATH/src/github.com/cockroachdb/cockroach/bin:$PATH
