node 'puppetdb.singlenode.vm' {
  file { '/var/lib/puppet/reports':
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0640',
    recurse => true,
  }->
  package { 'puppetmaster-passenger':
  }->
  service { 'apache2':
    ensure => running,
    enable => true,
  }

  class { 'puppetdb::server':
    ssl_listen_address => '0.0.0.0',
    listen_address => '0.0.0.0',
    require => Package['puppetmaster-passenger'],
  }

  class { 'puppetdb::database::postgresql':
    listen_addresses => '0.0.0.0',
  }

  class { 'puppetdb::master::config':
    puppet_service_name => 'apache2',
    require => Package['puppetmaster-passenger'],
  }
}

node /client\d+.singlenode.vm/ {
  package { 'puppet':
  }
}
