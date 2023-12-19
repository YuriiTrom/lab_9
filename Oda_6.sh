#!/bin/bash
set -x
apt-get update
    apt-get install -y docker.io
    usermod -aG docker ubuntu

    mkdir -p /etc/systemd/system/docker.service.d
    touch /etc/systemd/system/docker.service.d/override.conf

    echo '[Service]
      ExecStart=
      ExecStart=/usr/bin/dockerd
    }' | tee /etc/systemd/system/docker.service.d/override.conf

    echo '{
      "hosts": ["tcp://0.0.0.0:2375", "unix:///var/run/docker.sock"]
    }' | tee /etc/docker/daemon.json

    systemctl daemon-reload
    systemctl restart docker.service
