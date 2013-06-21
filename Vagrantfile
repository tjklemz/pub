Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04-chef11"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "192.168.33.10"
  config.berkshelf.enabled = true
  
  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.add_role("base")
  end
end

