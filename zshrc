# Variables

# ZSH Options

# Aliases
alias ls='ls -lAFg'

# Prompt(s)
PROMPT='
%1~ %# '

# $PATH Variable
eval "$(/opt/homebrew/bin/brew shellenv)"

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

# Other

