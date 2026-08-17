node 'puppetclient.example.com' {

  $message = lookup('message')

  file { '/tmp/r10k-hiera-test.txt':
    ensure  => file,
    content => "${message}\n",
  }

}
