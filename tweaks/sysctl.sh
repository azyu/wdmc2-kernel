#!/bin/bash

cat << EOF >> ${rootfs_dir}/etc/sysctl.conf

vm.min_free_kbytes=8192
net.core.somaxconn=4096
net.core.wmem_max=16777216
net.core.rmem_max=16777216
net.core.wmem_default=163840
net.core.rmem_default=163840
net.core.netdev_max_backlog=3000
net.ipv4.tcp_keepalive_time=1800
net.ipv4.tcp_fin_timeout=30
net.ipv4.tcp_max_syn_backlog=2048
net.ipv4.tcp_timestamps=0
EOF
