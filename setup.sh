sudo dnf -y install ansible
sudo dnf -y install redhat-rpm-config
sudo dnf -y install python-virtualenv
ansible-playbook $@ -i "localhost," -c local \
    base.yml \
    web.yml \
    numerical.yml \
    computational.yml \
    spatial.yml
