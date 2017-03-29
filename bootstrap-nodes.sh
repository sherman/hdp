#!/bin/sh

vagrant up

# add box private keys
for i in $(ls -d .vagrant/machines/*); do
	KEY="$i/virtualbox/private_key"
	ssh-add $KEY
done								

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook nodes.yml -vvvv -i hdp.hosts -c ssh -u vagrant --private-key=~/.vagrant.d/insecure_private_key