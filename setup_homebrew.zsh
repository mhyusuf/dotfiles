#! /usr/bin/env zsh

if [[ `uname` == "Darwin" ]]; then

  echo "\n<<< Starting Homebrew Setup >>>\n"

  if exists brew; then
  echo "brew exists, skipping install"
  else
  echo "brew doesn't exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew bundle --verbose

else
  echo "\n<<< Skipping Homebrew Setup - not running MacOS >>>\n"
fi