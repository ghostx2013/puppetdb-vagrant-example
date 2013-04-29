## You need:

* VMWare Fusion 5.0 or VirtualBox 4.2.10
* Vagrant 1.2.x or greater
* Vagrant Fusion Driver if using VMWare Fusion
* RVM or rbenv is recommended

## Usage

* Download this repository.
* Change to a suitable gemset in rvm or rbenv
* Run `bundle update`
* Update the modules with `librarian-puppet install`
* Then provision with:
    * Fusion: `vagrant up master-fusion --provider vmware_fusion`
    * Virtualbox: `vagrant up master-vbox`
* Run provision again, if you get errors: `vagrant provision master-fusion` (or master-vbox)
* Login to the box with: `vagrant ssh master-fusion` (or master-vbox)
* Destroy all boxes with: `vagrant destroy`
