# Setup stages
class { 'my_stages':
}

# Every host gets the Puppetlabs repos installed
class { 'my_plrepo':
  stage => 'pre',
}
