docker pull alpinelinux/ansible
docker run --rm -it \
	--mount type=bind,source="$(pwd)"/inventory,dst=/inventory \
	--mount type=bind,source="$(echo $HOME)"/.ssh/id_rsa,dst=/root/.ssh/id_rsa,readonly,bind-propagation=shared \
	--mount type=bind,source="$(pwd)"/scripts,dst=/scripts \
	--mount type=bind,source="$(pwd)"/playbooks,dst=/playbooks,readonly,bind-propagation=shared \
	alpinelinux/ansible sh
