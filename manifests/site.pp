file { '/tmp/puppet-demo.txt':
  ensure  => file,
  content => "Hello from Puppet Server!\n",
}
