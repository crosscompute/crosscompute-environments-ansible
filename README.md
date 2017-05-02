# Scientific Computing Environments via Ansible

Here are [Ansible](http://www.ansible.com) playbooks for preparing a scientific computing environment.

    git clone https://github.com/crosscompute/crosscompute-environments-ansible
    cd crosscompute-environments-ansible
    bash scripts/setup.sh

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

## Run scripts on current machine

    bash scripts/setup.sh

## Run scripts on another machine

    vim /tmp/hosts
        [workers]
        100.200.300.400
    bash scripts/setup.sh -i /tmp/hosts

## Override SSH user name

    bash scripts/setup.sh -i /tmp/hosts -u crosscompute

## Prompt for SSH user password

    bash scripts/setup.sh -i /tmp/hosts -k

## Prompt for SSH user password for privilege escalation

    bash scripts/setup.sh -i /tmp/hosts -c paramiko -K

## Specify different target_user

    bash scripts/setup.sh -e 'target_user=root'

## Specify different virtual environment

    bash scripts/setup.sh -e 'virtualenv_name=crosscompute'

## Specify different operating system

    OS_FAMILY=debian bash scripts/setup.sh -i /tmp/hosts
