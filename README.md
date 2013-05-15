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

### Single Node

* Change directory to `singlenode`
* Then provision with:
    * Fusion: `vagrant up --provider vmware_fusion`
* Run provision again, if you get errors: `vagrant provision`
* Login to the box with: `vagrant ssh`
* Destroy all boxes with: `vagrant destroy`

### Multi Node

* Change directory to `multinode`
* Then provision with:
    * Fusion: `vagrant up --provider vmware_fusion`
* Run provision again, if you get errors: `vagrant provision`
* Login to the box with: `vagrant ssh puppetdb`
* Destroy all boxes with: `vagrant destroy`
