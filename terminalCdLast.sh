#/bin/bash

function cdat () {
  echo "$1" > ~/.bash_last_shell_path
  builtin cd "$1"
}

moveStart=$(cat .bash_last_shell_path)
echo -e "* Start Shell at " "$moveStart"
cd $moveStart
