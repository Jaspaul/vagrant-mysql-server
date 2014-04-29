# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

HOSTNAME = "database"
DOMAIN   = "awesome.dev"
BOX      = "chef/debian-7.4"
IP       = "192.168.56.200"

CPUS = 1
RAM  = 256

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = BOX
  config.vm.host_name = HOSTNAME + "." + DOMAIN
  config.vm.network "private_network", ip: IP

  config.vm.provider "virtualbox" do |v|
    v.memory = RAM
    v.cpus = CPUS
  end

  config.vm.provision :shell do |shell|
    shell.inline = "apt-get update"
    shell.inline = "apt-get -q -y install puppet-common"
  end

end
