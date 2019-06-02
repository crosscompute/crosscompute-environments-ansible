if [ -n "$(command -v dnf)" ]; then
    sudo dnf -y install ansible
    ansible-playbook -i hosts $@ site.yml
elif [ -n "$(command -v apt-get)" ]; then
    sudo apt-get -y install ansible
    ansible-playbook -i hosts $@ bootstrap-debian.yml site.yml
fi
