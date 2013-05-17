class my_hosts {
  host { 'puppetdb.singlenode.vm':
    ip => '192.168.50.3',
  }

  host { 'client1.singlenode.vm':
    ip => '192.168.50.4',
  }

  host { 'client2.singlenode.vm':
    ip => '192.168.50.5',
  }

  host { 'puppet':
    ip => '192.168.50.3',
  }
}
