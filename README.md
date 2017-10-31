# ansible-playbook-setup-machine
Ansible playbook for setting up my machine. Inspired by [Geerlinguy's](https://github.com/geerlingguy/mac-dev-playbook)

## Usage
1. Clone this repo.
1. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles.
1. Run `$ ansible-playbook main.yml -i inventory -K`.
1. Enjoy!
