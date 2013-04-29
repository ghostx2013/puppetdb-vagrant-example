Vagrant.configure("2") do |config|
  config.vm.define "master-fusion" do |c|
    c.vm.box = "ubuntu-server-12042-x64-fusion503"
    c.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-fusion503.box"
    c.vm.hostname = 'master.foo.vm'
    c.vm.provision :puppet do |p|
      p.manifest_file = "site.pp"
      p.module_path = "modules"
    end
  end

  config.vm.define "master-vbox" do |c|
    c.vm.box = "ubuntu-server-12042-x64-vbox4210"
    c.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
    c.vm.hostname = 'master.foo.vm'
    c.vm.provision :puppet do |p|
      p.manifest_file = "site.pp"
      p.module_path = "modules"
    end
  end
end
