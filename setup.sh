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
	if [ -n "$REMOTE_HOST" ]; then
		ssh ${REMOTE_USER:-$USER}@$REMOTE_HOST dnf install -y python
	fi
    sudo dnf -y install ansible
    ANSIBLE_OPTIONS+=" bootstrap.yml"
	;;
esac

ansible-playbook -i hosts $ANSIBLE_OPTIONS site.yml
