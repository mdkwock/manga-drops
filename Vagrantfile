# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/hirsute64' # 21.04
  config.vm.hostname = 'manga-drops'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true

  config.vm.provider 'virtualbox' do |v|
    v.cpus   = ENV.fetch('RAILS_DEV_BOX_CPUS', 2).to_i
    v.memory = ENV.fetch('RAILS_DEV_BOX_RAM', 4096).to_i
    v.name   = 'manga-drops'
  end

  config.vm.provision 'shell' do |sh|
    sh.env        = { 'RUBY_VERSION' => '2.7.2', 'SWAP_SIZE' => '2G' }
    sh.keep_color = true
    sh.path       = 'bootstrap.sh'
    sh.privileged = false
  end
  config.vm.synced_folder './manga-drops', '/manga-drops', type: 'rsync', rsync__exclude: ['.git/']
end
