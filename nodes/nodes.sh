#!/bin/bash

swapoff -a
systemctl enable kubelet
systemctl restart kubelet
