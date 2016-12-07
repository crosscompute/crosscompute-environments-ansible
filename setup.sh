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
    ANSIBLE_OPTIONS+=" bootstrap.yml"
    ;;
esac

sudo pip install ansible
ansible-playbook -i hosts $ANSIBLE_OPTIONS site.yml
