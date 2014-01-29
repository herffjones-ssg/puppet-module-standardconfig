# == Class: standardconfig:cis_packages
#
# Package reccomendations from CIS for RHEL6
#
class standardconfig::cis_packages (
  $disable_compilers = true,
  $disable_tftp = true,
){

  # Ensure telnet server is not present on the system.
  package {'telnet-server':
    ensure => absent,
  }

  # Ensure rsh server is not present on the system.
  package {'rsh-server':
    ensure => absent,
  }

  # Ensure rsh client is not present on the system.
  package {'rsh':
    ensure => absent,
  }

  # Ensure NIS client is not present on the system.
  package {'ypbind':
    ensure => absent,
  }

  # Ensure NIS server is not present on the system.
  package {'ypserv':
    ensure => absent,
  }

  # Ensure tftp client (trivial file transfer protocol) is not present on the system.
  package {'tftp':
    ensure => absent,
  }

  # Ensure tftp server (trivial file transfer protocol) is not present on the system.  Allow override for Spacewalk
  if $disable_tftp == true {
    package {'tftp-server':
      ensure => absent,
    }
  }

  # Disable compilers by default
  if $disable_compilers == true {
    package { 'automake':
      ensure => absent,
    }

    package { 'gdb':
      ensure => absent,
    }

    package { 'gcc':
      ensure => absent,
    }

    package { 'strace':
      ensure => absent,
    }

  }

  # Ensure talk client is not present on the system.
  package {'talk':
    ensure => absent,
  }

  # Ensure talk service is not present on the system.
  package {'talk-server':
    ensure => absent,
  }

  # Ensure chargen-dgram service is not present on the system.
  package {'chargen-dgram':
    ensure => absent,
  }

  # Ensure chargen-stream service is not present on the system.
  package {'chargen-stream':
    ensure => absent,
  }

  # Ensure daytime-dgram service is not present on the system.
  package {'daytime-dgram':
    ensure => absent,
  }

  # Ensure daytime-stream service is not present on the system.
  package {'daytime-stream':
    ensure => absent,
  }

  # Ensure echo-dgram service is not present on the system.
  package {'echo-dgram':
    ensure => absent,
  }

  # Ensure echo-stream service is not present on the system.
  package {'echo-stream':
    ensure => absent,
  }

  # Ensure tcpmux-server service is not present on the system.
  package {'tcpmux-server':
    ensure => absent,
  }

  # Ensure X Windows is not present on the system.
  package {'xorg-x11-libs':
    ensure => absent,
  }

  # Ensure Avahi zeroconf service is not present on the system.
  package {'avahi-daemon':
    ensure => absent,
  }

  # Ensure DHCP (dynamic host configuration protocol) service is not present on the system.
  package {'dhcp':
    ensure => absent,
  }

  # Ensure MCS Translation Service is not present on the system.
  package {'mcstrans':
    ensure => absent,
  }

  # Ensure the Red Hat GPG encryption key is installed.
  package {'gpg-pubkey':
    ensure  => installed,
  }

}
