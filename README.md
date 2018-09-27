# Cd Last Shell

Little easy script which opens the new bash terminal in the last visited
directory by ` cdat `, or directly by calling `cdlast`

**Warning!**

* This script creates the ` cdat ` command. It will write to a file in your home
directory, `~/.bash_last_shell_path` by default.

* It creates also the `cdlast` command, which change directory the path stored
in the file.


# Requirement

  * **bash** should be compatible with other shell languages with little fixes
  * *.bash_last_shell_path* file in your *~* directory

# Install

  * Copy the in_bash_rc.sh script into your .bashrc
    * Other files are just for code splitting
  * Reload your bashrc
   
  ```sh
  source ~/.bashrc
  ```
  
  or 
  
  ```sh
  . ~/.bashrc
  ```

# Why?

  I was upset when a needed multiple terminal for a project to change directory
  into the one I was working in. This save me a lot of time.

  And it's very pleasant for a i3 user.

# Author

  SidoShiro - github
  
# Contributors

  Smlep - https://github.com/Smlep

# Edits

* **Thu, September 27, 2018**
  Splitting the two function in two files, a new file `in_bash_rc.sh` is the
  file to copy in the bashrc.

* **Sat, June 30, 2018**
  At first the function was named *cd* in order to override the original *cd*
  command, but it was not good, as it involve file writing, it could also slow
  down or make undefined effects when *cd* is called in some bash scripts or
  some particular use.

* **Wed, July 4, 2018**
  Using a *echo* of *$PWD* to store the absolute path to the directory, and not
  the relative path like before. That was a fatal bug!

