# Scientific Computing Environments via Ansible

Here are [Ansible](http://www.ansible.com) playbooks for preparing a scientific computing environment.

    git clone https://github.com/invisibleroads/crosscompute-environments-ansible
    cd crosscompute-environments-ansible
    bash setup.sh

These scripts have been tested to work with the following configurations:

- Fedora 25 on DigitalOcean
- Fedora 24 on DigitalOcean
- Ubuntu 16.10 on DigitalOcean
- Ubuntu 16.04 on DigitalOcean

Thanks to [Salah Ahmed](https://github.com/salah93) for prototyping the updated scripts.

After having run the scripts, you can activate the virtual environment using any of the following shortcuts.

    v  # Activate virtual environment
    i  # Start ipython
    n  # Start jupyter notebook

## Override remote user name

    bash setup.sh -i /tmp/hosts -u crosscompute

## Prompt for remote user password for privilege escalation

    bash setup.sh -i /tmp/hosts -c paramiko -K

## Specify different virtual environment

    bash setup.sh -e "virtualenv=~/.virtualenvs/crosscompute"

## Specify different host

    vim /tmp/hosts
        [workers]
        100.200.300.400
    OS_FAMILY=debian bash setup.sh -i /tmp/hosts
