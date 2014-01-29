# == Class: standardconfig:cis_cron
#
# Cron Configruation. From CIS documentation.
#
class standardconfig::cis_cron {

  # Ensure the anacron daemon is present.
  package {'cronie-anacron':
    ensure => installed,
  }

  service {'crond':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
    require     => Package['cronie-anacron'],
  }

  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => '0600',
  }

  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => '0700',
  }

  file {'/etc/at.deny':
    ensure  => absent,
  }

  file {'/etc/at.allow':
    source  => 'puppet:///modules/standardconfig/at.allow',
    owner   => root,
    group   => root,
    mode    => '0600',
  }

  file {'/etc/cron.allow':
    source  => 'puppet:///modules/standardconfig/cron.allow',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
