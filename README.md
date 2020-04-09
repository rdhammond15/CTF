# Purpose
Useful tools/information for CTF competitions

# Ansible
This playbook is meant to install any tools universally needed for CTF. Currently it just installs Ghidra in ~/Downloads. Edit the `hosts` file if you are targetting a remote machine and not localhost.

`ansible-playbook -k -K -i hosts site.yml`
* `-k`: prompt for SSH password
* `-K`: prompt for sudo password
