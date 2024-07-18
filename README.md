# Ansible

[Ansible](https://www.ansible.com/) verwendet YAML Konfigurationen, um automatisch Befehle nacheinander auszuführen.

Die wichtigsten Konfigurationsdateien sind:
- Hosts.yaml
- Playbooks

## Voraussetzungen
Folgende Scripts führen Ansible als Docker Container Interaktiv auf dem System aus.
Voraussetzungen sind:
- Docker
- Zugriff auf Docker-Registry (für Docker Image)
- drei Ordner:
	- inventory
	- scripts
	- playbooks
- SSH-Key

## Hosts.yaml
In der "hosts.yaml"  werden alle Hosts, welche von Ansible angesprochen werden sollen, angegeben.

## Playbooks
Die Playbooks enthalten die Anweisungen, welche auf den angegebenen Servern in der Hosts.yaml ausgeführt werden sollen. Die Struktur ist hier ebenfalls klassich yaml. 
