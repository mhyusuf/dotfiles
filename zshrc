# Variables
export MANPAGER="sh -c 'col -bx | bat -l man -p'" # Syntax highlighting for man pages using bat
export HOMEBREW_CASK_OPTS="--no-quarantine"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export ANDROID_HOME=$HOME/Library/Android/sdk

# ZSH Options

# Aliases
alias ls='ls -lAFg'

# Prompt(s)
PROMPT='
%1~ %# '

# $PATH Variable
typeset -U path

path=(
  $N_PREFIX/bin
  '/opt/homebrew/bin'
  $path
  $ANDROID_HOME/emulator
  $ANDROID_HOME/tools
  $ANDROID_HOME/tools/bin
  $ANDROID_HOME/platform-tools
  '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
)

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

# Other

