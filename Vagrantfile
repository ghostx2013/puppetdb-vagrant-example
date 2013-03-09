Vagrant::Config.run do |config|
  config.vm.define "squeeze" do |c|
    c.vm.box = "debian-606-x64"
    c.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-606-x64.box"
    c.vm.boot_mode = :gui
    c.vm.provision :puppet do |p|
      p.manifest_file = "site.pp"
      p.module_path = "modules"
#      p.options = ["--modulepath", "modules"]
    end
  end
end
