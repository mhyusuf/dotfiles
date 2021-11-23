#! /usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "node $(node --version) and npm $(npm --version) already installed"
else
  echo "Installing node and npm with n..."
  n install lts
  if [ ! -f /usr/local/bin/node ]; then
    echo "Creating sym link in /usr/local/bin/node"
    sudo ln -s $(which node) /usr/local/bin/node
  fi
fi