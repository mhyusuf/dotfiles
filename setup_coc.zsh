#! /usr/bin/env zsh

echo "\n<<< Starting Coc Setup >>>\n"

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

# Change extension names to the extensions you need
npm config set registry=https://registry.npmjs.org
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-html --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-css --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
