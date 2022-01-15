#!/bin/env bash
# Install dotfiles
#set -x

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
