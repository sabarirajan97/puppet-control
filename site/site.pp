file { '/tmp/puppet-test.txt':
  ensure  => file,
  content => "Managed by Puppet via r10k\n",
}
