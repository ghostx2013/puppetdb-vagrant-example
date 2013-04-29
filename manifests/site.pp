# Alias for puppet
host { 'puppet':
  ip => '127.0.0.1',
}

# Setup puppetlabs apt, install the basic packages and fix report permissions
apt::source { "puppetlabs":
  location   => "http://apt.puppetlabs.com",
  release    => "squeeze",
  repos      => "main",
  key        => '4BD6EC30',
  key_server => 'pgp.mit.edu',
}->
package { 'puppetmaster-passenger':
}->
file { '/var/lib/puppet/reports':
  owner   => 'puppet',
  group   => 'puppet',
  mode    => '0640',
  recurse => true,
}->
class { 'puppetdb': }->
class { 'puppetdb::master::config':
  puppet_service_name => 'apache2',
}

