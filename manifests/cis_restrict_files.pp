# == Class: standardconfig:cis_restrict_files
#
# Restrict access to important OS files. From CIS documentation.
#
class standardconfig::cis_restrict_files {

  # Ensure restrictive permissions on the Grub configuration file.
  file {'/etc/grub.conf':
    owner => 'root',
    group => 'root',
    mode  => '0600',
  }

  # Ensure hosts.allow is protected against unauthorized modifications.
  file {'/etc/hosts.allow':
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  # Ensure hosts.deny is protected against unauthorized modifications.
  file {'/etc/hosts.deny':
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  # Restrict access to the /etc/password file.
  file {'/etc/passwd':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  # Restrict access to the /etc/shadow file.
  file {'/etc/shadow':
    owner   => 'root',
    group   => 'root',
    mode    => '0000',
  }

  # Restrict access to the /etc/security/opasswd file.
  file {'/etc/security/opasswd':
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }

  # Restrict access to the /etc/gshadow fil
  file {'/etc/gshadow':
    owner   => 'root',
    group   => 'root',
    mode    => '0000',
  }

  # Restrict access to the /etc/group file.
  file {'/etc/group':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
