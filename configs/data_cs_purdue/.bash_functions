
# bash shell functions

# HW changer
function hw() {
  # find ~+ to do full path
  cd $(cd ~/cs240; find . -maxdepth 1 -mindepth 1 -type d -name "hw*" 
  -printf '%p\t%p\n' | sort -nr | head -n 1 | cut -f2);
}

# tests hw 100 times for cs 240
function testhw() {
  RUN="./hw*_test"
    for ((i=1; i<=1000; i++)) do
      output="$($RUN 2>&1))"
        if [[ "$?" != "100" ]]; then
          echo "$output Failed at run #$i"; break; fi; done
}

#restarts all the profiles
function restart_profiles() {
  . ~/.bashrc
  . ~/.bash_functions
  . ~/.bash_aliases
}

#updates the config to the current location
function update_configs() {
  cp ~/.bashrc .
  cp ~/.bash_functions .
  cp ~/.bash_aliases .
  cp ~/.vimrc .
}

#loads the config from here to root dir
function load_configs() {
  cp ./.bashrc ~/.bashrc
  cp ./.bash_functions ~/.bash_functions
  cp ./.bash_aliases ~/.bash_aliases
  cp ./.vimrc ~/.vimrc
}
