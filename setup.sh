#!/bin/sh

# Variables can be changed to use different OS/releases
OS=ubuntu
RELEASE=xenial64

vagrant init $OS/$RELEASE

# Clear default Vagrantfile
echo "" > Vagrantfile
cat > Vagrantfile << 'EOF'
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y python 
  SHELL
  
config.vm.provision "ansible" do |ansible|
  ansible.playbook = "site.yml"
end
end
EOF
