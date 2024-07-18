@echo off
docker pull alpinelinux/ansible
docker run --rm -it ^
    --mount type=bind,source="%cd%\inventory",dst=/inventory ^
    --mount type=bind,source="c:\Users\%USERNAME%\.ssh\id_rsa",dst=/root/.ssh/id_rsa ^
    --mount type=bind,source="%cd%\scripts",dst=/scripts ^
    --mount type=bind,source="%cd%\playbooks",dst=/playbooks ^
    alpinelinux/ansible sh
