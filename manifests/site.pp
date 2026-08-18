node 'puppetclient.example.com' {


  $message = lookup('message')


  file { '/tmp/r10k-hiera-test.txt':
    ensure  => file,
    content => "${message}\n",
  }


  file { '/tmp/puppet-demo.txt':
    ensure  => file,
    content => "Hello from Puppet Server!\n",
  }


  file { '/tmp/hiera-test.txt':
    ensure  => file,
    content => lookup('message'),
  }


  package { 'httpd':
    ensure => installed,
  }


  service { 'httpd':
    ensure  => running,
    enable  => true,
    require => Package['httpd'],
  }


  package { 'chrony':
    ensure => installed,
  }


  service { 'chronyd':
    ensure  => running,
    enable  => true,
    require => Package['chrony'],
  }
}
