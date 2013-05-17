node 'master.multinode.vm' {
  # Alias for puppet
  host { 'puppet':
    ip => '127.0.0.1',
  }
  host { 'puppetdb.multinode.vm':
    ip => '192.168.182.161',
    alias => 'puppetdb',
  }
  
  package { 'puppetmaster-passenger':
  }->
  file { '/var/lib/puppet/reports':
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0640',
    recurse => true,
  }->
  class { 'puppetdb::master::config':
    puppet_service_name => 'apache2',
    puppetdb_server => 'puppetdb.multinode.vm',
  }
}

node 'puppetdb.multinode.vm' {
  class { 'puppetdb':
    ssl_listen_address => '0.0.0.0',
    listen_address => '0.0.0.0',
  }
}
