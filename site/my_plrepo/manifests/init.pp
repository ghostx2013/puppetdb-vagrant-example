class my_plrepo {
  class { 'apt':
  }

  apt::source { "puppetlabs":
    location   => "http://apt.puppetlabs.com",
    release    => "squeeze",
    repos      => "main",
    key        => '4BD6EC30',
    key_server => 'pgp.mit.edu',
  }
}
