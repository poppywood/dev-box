# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::configure("2") do |config|

 config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "1024",
      "--cpus", "1",
      "--ioapic", "on",
      "--natdnshostresolver1", "on"
      ]
    end

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "devbox"
  config.vm.network :forwarded_port, host: 8080, guest: 80, auto_correct: true
  config.vm.network :forwarded_port, guest: 3306, host: 8889, auto_correct: true
  config.vm.synced_folder "www", "/var/www", type: "nfs", :linux__nfs_options => ["no_root_squash"], :map_uid => 0, :map_gid => 0
  config.ssh.forward_agent = true

  config.vm.provision :shell, :inline => "echo \"Europe/Berlin\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

  config.vm.network :private_network, ip: "192.168.3.3"

  config.vm.provision :puppet do |puppet|
     puppet.facter = { "fqdn" => "local.devbox", "hostname" => "devbox" }
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "base.pp"
     puppet.module_path = "modules"
     puppet.options = "--verbose --debug"
  end
  
  config.vm.provision :shell, :path => "./scripts/create-mysql.sh"
  config.vm.provision :shell, :path => "./scripts/enable_remote_mysql_access.sh"

end
