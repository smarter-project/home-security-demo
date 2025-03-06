#!/bin/bash

export IP_HOST=192.168.2.215
export USER=alexandr
export SSH_KEY="--ssh-key $HOME/.ssh/id_ecdsa"
export K3SUP="/Users/alefer02/Projects/k3sup/bin/k3sup"

COMMAND_LINE="${K3SUP} install --ip ${IP_HOST} --user ${USER} ${SSH_KEY}"
${COMMAND_LINE}
