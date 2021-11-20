# Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Disable MacOS gatekeeper notification
export HOMEBREW_CASK_OPTS="--no-quarantine"

# ZSH Options

# Aliases
alias ls='ls -lAFg'

# Prompt(s)
PROMPT='
%1~ %# '

# $PATH Variable
# Add Homebrew (brew)
path=('/opt/homebrew/bin' $path)
# Add Visual Studio Code (code)
path+=('/Applications/Visual Studio Code.app/Contents/Resources/app/bin')
# Prevent duplicate values
typeset -U path
# export to sub-processes (make it inherited by child processes)
export PATH

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

# Other

