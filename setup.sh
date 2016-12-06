REMOTE_OPERATING_SYSTEM=${REMOTE_OPERATING_SYSTEM:-$(lsb_release -si)}
ANSIBLE_OPTIONS+=$@

while [[ $# -gt 1 ]]; do
case "$1" in
-u)
    REMOTE_USER="$2"
    shift
    ;;
-i)
    REMOTE_HOST="${2//,}"
    shift
    ;;
esac
shift
done

case $REMOTE_OPERATING_SYSTEM in
Fedora)
    sudo dnf -y install ansible
    ANSIBLE_OPTIONS+=" bootstrap.yml"
    ;;
esac

ansible-playbook -i hosts $ANSIBLE_OPTIONS site.yml
