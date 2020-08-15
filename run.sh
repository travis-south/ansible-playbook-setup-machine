#!/usr/bin/env bash

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install ansible

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K
