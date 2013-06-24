# -*- mode: ruby -*-
# vi: set ft=ruby

Vagrant.configure("2") do |config|
  config.vm.box = "dummy"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

  config.berkshelf.enabled = true
  
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root"

  config.vm.provider :aws do |aws, override|
    aws.access_key_id = ENV['AWS_ACCESS_KEY_ID']
    aws.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    aws.keypair_name = "vagrant"
    override.ssh.private_key_path = "~/.ssh/aws/vagrant.pem"
    aws.instance_type = "t1.micro"
    aws.ami = "ami-23d9a94a"
    override.ssh.username = "ubuntu"
    aws.tags = {
        'Name' => 'Vagrant Test',
    }
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.add_role "base"
  end
end

