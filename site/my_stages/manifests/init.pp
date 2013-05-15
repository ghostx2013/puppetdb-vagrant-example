class my_stages {
  stage { 'pre':
    before => Stage['main'],
  }
}
