#!/bin/bash

swapoff -a
systemctl enable kubelet
systemctl restart kubelet
systemctl enable docker
systemctl restart docker
