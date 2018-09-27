#/bin/bash

function cdat () {
  builtin cd "$1"
  echo $PWD > ~/.bash_last_shell_path
}

