OS_FAMILY=${OS_FAMILY:-RedHat}
sudo pip install ansible
ansible-playbook -i hosts $@ bootstrap-${OS_FAMILY,,}.yml site.yml
