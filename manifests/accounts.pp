# == Class: standardconfig
#
# Server config Document: 6.1 - Accounts (PCI DSS 2.2)
#
class standardconfig::accounts {

  # Removes all unecessary users on the system.
  user { ['bin','daemon','adm','lp','sync','uucp','operator','games','gopher','ftp','abrt']:
    ensure  => 'absent',
  }

}
