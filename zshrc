# Variables

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

