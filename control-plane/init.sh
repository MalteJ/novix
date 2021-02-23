kubeadm init \
	--pod-network-cidr="10.217.0.0/16" \
	--service-cidr="10.96.0.0/12" \
	--apiserver-advertise-address="96.82.77.34" \
	--apiserver-bind-port="443" \
	--apiserver-cert-extra-sans="" \
	--control-plane-endpoint="96.82.77.34" \
