#/bin/bash

function cdat () {
  builtin cd "$1"
  echo $PWD > ~/.bash_last_shell_path
}

moveStart=$(cat .bash_last_shell_path)
echo -e "* Start Shell at " "$moveStart"
cd $moveStart
