# Ansible
This folder contains the various Ansible playbooks used for maintaining the base OS for my Kubernetes cluster.

## Keepalived
Keepalived is used to provide high availability for the Kubernetes APIs outside of the cluster.

## Patch-Hosts
This playbook performs base OS patching on the servers hosting Kubernetes and ensures the /var/run/reboot-required flag is set if any services need restarted.

## Reboot
This playbook performs the rolling drain, reboot, uncordon process for all nodes with the /var/run/reboot-required flag set.

## Firmware-Update
This playbook performs the BIOS/Firmware updates on the servers hosting Kubernetes.

## OS-Setup
This playbook configures the host OS as needed to support the K8S Cluster.