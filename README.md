# Scientific Computing Environments via Ansible

Here are [Ansible](http://www.ansible.com) playbooks for preparing a scientific computing environment.

    git clone https://github.com/invisibleroads/crosscompute-environments-ansible
    cd crosscompute-environments-ansible
    bash setup.sh

## Specify a different virtual environment

    bash setup.sh --extra-vars "virtualenv=~/.virtualenvs/crosscompute"

## Specify a different host

    bash setup.sh -u root -i 104.236.57.99,
