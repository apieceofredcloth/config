#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export SPARK_HOME="/opt/tiger/spark_deploy/spark-1.4.1-bin-hadoop-2.6.0-cdh5.4.4"

export PATH="$PATH:$SPARK_HOME/bin"
export PATH="$PATH:/opt/tiger/ss_bin:/opt/tiger/ss_lib/bin:/opt/tiger/dev_toolkit/bin"
export PATH="$PATH:/opt/tiger/thrift/bin"

#export PYTHONPATH="$HOME/repos/ss_lib/python_package/lib/python2.7/site-packages:$PYTHONPATH"
export PYTHONPATH="$HOME/repos:$HOME/repos/pyutil:$HOME/repos/toutiao/lib:$HOME/repos/toutiao/app:$HOME/repos/growth:$PYTHONPATH"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH="$GOROOT/bin:$GOPATH/bin:$HOME/bin:$PATH"

export PATH="$PATH:$HOME/node_modules/.bin"


# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

export EDITOR=vim

alias ta="tmux attach"
alias b="sudo su -"
alias tmux="TERM=xterm-256color tmux"

hash -d app=~/repos/toutiao/app
hash -d appg=~/repos/growth
hash -d gosrc="$GOPATH/src"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#nvm use stable --delete-prefix
#
alias grep='grep --color=always'
