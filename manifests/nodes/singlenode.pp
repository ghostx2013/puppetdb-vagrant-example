node 'puppetdb.singlenode.vm' {
  # Alias for puppet
  host { 'puppet':
    ip => '127.0.0.1',
  }
  
  file { '/var/lib/puppet/reports':
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0640',
    recurse => true,
  }->
  package { 'puppetmaster-passenger':
  }->
  class { 'puppetdb': }->
  class { 'puppetdb::master::config':
    puppet_service_name => 'apache2',
  }
}
