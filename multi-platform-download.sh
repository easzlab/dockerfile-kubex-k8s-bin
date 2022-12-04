#!/bin/sh
ARC=$(uname -m)
ARCH="amd64"

case "$ARC" in
  x86_64)
      ARCH="amd64"
      ;;
  aarch64)
      ARCH="arm64"
      ;;
  ?)
      echo "error: not supported platform right now, exit"
      exit 1
      ;;
esac

mkdir -p /k8s
wget https://dl.k8s.io/release/${K8S_VER}/bin/linux/${ARCH}/kubeadm && \
wget https://dl.k8s.io/release/${K8S_VER}/bin/linux/${ARCH}/kubelet && \
wget https://dl.k8s.io/release/${K8S_VER}/bin/linux/${ARCH}/kubectl && \
chmod +x kubeadm kubelet kubectl && \
mv kubeadm kubelet kubectl /k8s
