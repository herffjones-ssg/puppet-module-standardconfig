# == Class: standardconfig:useraccounts
#
# Server config Document: 6.2 - User Accounts (PCI DSS 8.5, 2.2)
#
class standardconfig::useraccounts {

  file {'/etc/login.defs':
    source  => 'puppet:///modules/standardconfig/login.defs',
    owner   => root,
    group   => root,
    mode    => '0644',
  }

}
