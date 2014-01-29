# == Class: standardconfig
#
# Herff Jones standard configuration from build documentation
#
class standardconfig {

  # Include the AIDE module for file integrity monitoring.
  # TODO(?) only install if it's a PCI system
  include aide

  # Ensure built in RHEL users are removed
  include standardconfig::accounts

  # Ensure user login restrictions
  include standardconfig::useraccounts

  # CIS Package Reccomendations
  include standardconfig::cis_packages

  # CIS File Restrictions
  include standardconfig::cis_restrict_files

  # CIS Cron reccomendations
  include standardconfig::cis_cron

  # Include the audit service and config to meet CIS standards
  include audit

}
