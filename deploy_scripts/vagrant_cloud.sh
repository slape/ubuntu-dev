#!/bin/bash
# a precursor to using packer

vagrant up
vagrant provision
vagrant package -o ./ubuntu-dev.box

vagrant cloud publish slape/ubuntu-dev \
1.0.0 virtualbox ~/Documents/ubuntu-dev/vagrant/package.box \
-d "a preconfigured developer environment" \
--version-description "A Blank Base Box" \
--release --short-description "Needs further provisioning."