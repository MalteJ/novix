#!/bin/bash

set -e

yes | kubeadm reset #--cri-socket="/run/crio/crio.sock"

rm -rf /etc/cni/
rm -rf /opt/cni/
rm -rf /var/lib/kubelet/
rm -rf /etc/kubernetes/


#	--cri-socket="/run/crio/crio:sock" \
kubeadm init \
	--node-name="alice" \
	--pod-network-cidr=192.168.0.0/16 \
	--apiserver-advertise-address="0.0.0.0" \
	--apiserver-bind-port="8443" \
	--apiserver-cert-extra-sans="96.82.77.34,10.0.0.188,127.0.0.1,localhost,alice.fabulous.af,nivenly.com,0.0.0.0" \
	--control-plane-endpoint="96.82.77.34" \
	--upload-certs


cp /etc/kubernetes/admin.conf /home/novix/.kube/config
chown novix:novix /home/novix/.kube/config


# CNI
kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml
kubectl create -f https://docs.projectcalico.org/manifests/custom-resources.yaml

