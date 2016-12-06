OPERATING_SYSTEM=$(lsb_release -si)

case $OPERATING_SYSTEM in

Fedora)
    HOST_URL=https://download1.rpmfusion.org
    X=$(rpm -E %fedora)
    sudo dnf -y install \
        ansible \
        $HOST_URL/free/fedora/rpmfusion-free-release-$X.noarch.rpm \
        $HOST_URL/nonfree/fedora/rpmfusion-nonfree-release-$X.noarch.rpm
    ANSIBLE_OPTIONS+=bootstrap.yml
;;

esac

ansible-playbook -i hosts $ANSIBLE_OPTIONS $@ site.yml
