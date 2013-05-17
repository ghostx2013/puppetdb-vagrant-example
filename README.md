## You need:

* VirtualBox 4.2.10 or greater
* Vagrant 1.2.x or greater
* RVM or rbenv is recommended

## Usage

* Download this repository.
* Change to a suitable gemset in rvm or rbenv
* Run `bundle update`
* Update the modules with `librarian-puppet install`

### Single Node

* Change directory: `cd singlenode`
* Then provision with: `vagrant up`
* Run provision again, if you get errors: `vagrant provision`
* Login to the box with: `vagrant ssh`
* Destroy all boxes with: `vagrant destroy`

You can access the PuppetDB console using: <http://localhost:18080/dashboard/index.html>

You can also connect to the PostgreSQL database on:

* host: localhost
* port: 15432
* username: puppetdb
* password: puppetdb

### Multi Node

* Change directory to `multinode`
* Then provision with:
    * Fusion: `vagrant up --provider vmware_fusion`
* Run provision again, if you get errors: `vagrant provision`
* Login to the box with: `vagrant ssh puppetdb`
* Destroy all boxes with: `vagrant destroy`
