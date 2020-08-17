#!/usr/bin/env bash

mkdir -p ~/playground

if [[ ! -a "${HOME}/.oh-my-zsh" ]]
then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;

if ! command -v brew &> /dev/null
then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if ! command -v ansible &> /dev/null
then
    brew install ansible
fi

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K
