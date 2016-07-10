# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'puphpet/ubuntu1404-x64'
  config.vm.hostname = 'kushboo-on-rails'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  #config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true
  config.ssh.insert_key = false

  config.vm.provider 'vmware_fusion' do |v|
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.provider 'virtualbox'
  config.vm.provision :shell, path: "provision/install_ruby_and_rails.sh"
end
