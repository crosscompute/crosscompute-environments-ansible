OS_FAMILY=${OS_FAMILY:-RedHat}

if [ -n "$(command -v dnf)" ]; then
    sudo dnf -y install ansible
elif [ -n "$(command -v apt-get)" ]; then
    sudo apt-get -y install ansible
fi

ansible-playbook -i hosts $@ bootstrap-${OS_FAMILY,,}.yml site.yml
