#!/bin/sh

vagrant up

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook horton-cluster.yml -vvvv -i hdp.hosts -c ssh -u vagrant --private-key=~/.vagrant.d/insecure_private_key