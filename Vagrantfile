# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "slape/ubuntu-dev"
  config.vm.box_version = "1.0"
  config.vm.synced_folder "~/vm_share", "~/host_share"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "8192"
    vb.cpu = 2
  end
  
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "ansible/main.yml"
  end
end
