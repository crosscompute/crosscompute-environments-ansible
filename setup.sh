OPERATING_SYSTEM=$(lsb_release -si)

case $OPERATING_SYSTEM in

Fedora)
    sudo dnf -y install ansible
    ANSIBLE_OPTIONS+=bootstrap.yml
;;

esac

ansible-playbook -i hosts $ANSIBLE_OPTIONS $@ site.yml
