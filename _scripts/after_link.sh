#!/bin/sh
echo 'nvm...'
nvm install stable
nvm use stable

echo 'rbenv...'
rbenv install 2.3.0
rbenv global 2.3.0

echo 'pip packages...'
pip install virtualenv --user
pip install http-prompt --user
