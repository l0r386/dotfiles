#!/bin/env bash
# Install dotfiles
set -x
pushd $HOME"/.dotfiles/"

if [ -z ${SERVICE_DIRS+x} ];
then
    CONFIG_FOLDERS='nvim zsh'
else
    CONFIG_FOLDERS=$STOW_DIRS
fi

IFS=' '
read -ra ARR <<< "$CONFIG_FOLDERS"
for item in "${ARR[@]}"
do
    stow -D "$item" 2> /dev/null
    stow "$item"
done

popd
