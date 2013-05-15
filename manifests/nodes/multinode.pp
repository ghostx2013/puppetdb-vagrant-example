node 'master.multinode.vm' {
  # Alias for puppet
  host { 'puppet':
    ip => '127.0.0.1',
  }
  
  package { 'puppetmaster-passenger':
  }->
  file { '/var/lib/puppet/reports':
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0640',
    recurse => true,
  }
}

node 'puppetdb.multinode.vm' {
  class { 'puppetdb':
  }
}
