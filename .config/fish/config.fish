function ls --description 'List contents of directory'
  command ls -lhFG $argv
end

function df --description 'Displays disk free space'
  command df -H $argv
end

function subl --description 'Launches sublime text in a new window'
  command subl -n $argv
end

function grep --description 'Colorful grep that ignores binary file and outputs line number'
  command grep --color=always -I $argv
end

function gf --description 'Do a git fetch'
  command git fetch
end

function gdeletemergedcurrent --description 'Delete all local branches that is already merged to current branch (exludes master)'
  command git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
end

# set -gx GOPATH $HOME/Go
# set -gx GOROOT (go env GOROOT)
#set -gx PATH $HOME/bin $GOPATH/bin $HOME/.rbenv/shims /usr/local/bin /usr/local/sbin $PATH $GOROOT/bin ./node_modules/.bin

. $HOME/.config/fish/virtual.fish
. $HOME/.config/fish/prompt.fish

# boot2docker settings
set -gx DOCKER_HOST tcp://192.168.59.103:2376
set -gx DOCKER_CERT_PATH /Users/ronald/.boot2docker/certs/boot2docker-vm
set -gx DOCKER_TLS_VERIFY 1
set -gx HOMEBREW_GITHUB_API_TOKEN 58374d7e709cfca30cecc3158f1a408014ffd263

# Java
set -gx JAVA_HOME (/usr/libexec/java_home)

# Allow 256 colors in iTerm2 for pretty vim colors
set -Ux CLICOLOR 1
# set -Ux TERM xterm-256color

alias webstart='python -m SimpleHTTPServer'
# ls aliases
alias ls='ls'
alias ll='ls -lh'
alias la='ls -lA'
alias lj='ls | grep java'
alias l='ls' # 
alias conLab='ssh cs'
alias guiLab='ssh -y cs'
alias vim='mvim'
# 
alias search=grep
# 
# # Rails
alias rake='bundle exec rake'
# 
alias reload='. ~/.config/fish/config.fish'
# 
#moving around
alias back='cd -'
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
alias 3a='cd ~/Google\ Drive/Waterloo/3A/Class'

#jekyll stuff
alias jserve="jekyll serve"
alias jwatch="jekyll serve --watch"
alias jbuild="jekyll build"
 
# get internet speed
 alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'
# 
# get external ip
alias extip='curl icanhazip.com'
# 
# print the current time
alias now='date +%T'
# 
# git/github
alias git='hub'
alias 'git-ammend'='git commit --ammend -C HEAD'

set -g fish_key_bindings fish_vi_key_bindings
set -g theme_display_ruby no
set -g theme_nerd_fonts no
set -g theme_powerline_fonts yes
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 15
set -g theme_display_vi yes
set -g theme_display_cmd_duration yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes

set -g Z_SCRIPT_PATH ~/bin/z.sh

neofetch
