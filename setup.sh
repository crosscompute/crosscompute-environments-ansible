sudo dnf -y install \
    ansible \
    python-dnf \
    redhat-rpm-config
ansible-playbook -i "localhost," -c local \
    base.yml \
    web.yml \
    numerical.yml \
    computational.yml \
    spatial.yml
