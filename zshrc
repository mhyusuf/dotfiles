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
eval "$(/opt/homebrew/bin/brew shellenv)"
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

# Other

