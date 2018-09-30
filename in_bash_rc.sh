#/bin/bash

# YOUR BASH RC STUFF HERE
#  ...
#  ...
#  ...




# cd last shell functions and call

function cdlast () {
  if [ -f ~/.bash_last_shell_path ] ; then
    startAt=$(cat ~/.bash_last_shell_path)
    if [ ! $# -eq 2 ] ; then
      echo -e "$1" "$startAt"
    fi
    cd $startAt
  else
    echo "cd_last_shell: error: .bash_last_shell_path file not found!"
  fi
}

function cdat () {
  builtin cd "$1"
  echo $PWD > ~/.bash_last_shell_path
}

# If each terminal start with at lastshellpath leave this:
cdlast "start shell at"

# or just `cdlast`
