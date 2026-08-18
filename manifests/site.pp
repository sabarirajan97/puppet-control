node 'puppetclient.example.com' {

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
