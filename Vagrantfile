# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
apt-get update -qq
apt-get install python-pip build-essential libssl-dev libffi-dev python-dev -qq
pip install markupsafe ansible==2.1.1.0
cd /srv/rsrv/ansible
ansible-playbook vagrant.yml -i hosts --connection=local
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.provision :shell, :inline => $script

    config.vm.network "forwarded_port", guest: 80, host: 7002, host_ip: "127.0.0.1" # expose shiny

    config.vm.synced_folder "", "/srv/rsrv", :owner=>"vagrant", :group=>"vagrant", :mount_options=>["dmode=777","fmode=666"]

end