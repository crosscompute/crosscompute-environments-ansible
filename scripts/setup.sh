OS_FAMILY=${OS_FAMILY:-redhat}
CONFIGURATION_PATHS=site.yml

if [[ "$OS_FAMILY" == "debian" ]]; then
    CONFIGURATION_PATHS="bootstrap-debian.yml $CONFIGURATION_PATHS"
fi

python3 -m pip install --user --upgrade ansible
python3 /usr/bin/ansible-playbook -i hosts $@ $CONFIGURATION_PATHS
