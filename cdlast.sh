#/bin/bash

# $1 is the custom message for this command
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
