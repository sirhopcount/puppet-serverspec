# Define serverspec::spec
#
# This define handles the configuration of spec tests
#
# Author
#   Adrian van Dongen sirhopcount@goodfellasonline.nl
#
# Version
#   0.1   Initial release
#
# Parameters:
#
# Requires:
#   serverspec::params
#
# Sample Usage:
#
#   serverspec::spec {'base_spec.rb':}
#
define serverspec::spec {

  # Load default parameters
  include serverspec::params

  # Place the spec file
  file{$name:
      ensure  => file,
      path    => "${serverspec::params::spec_path}/${name}",
      owner   => $serverspec::params::owner,
      group   => $serverspec::params::group,
      mode    => $serverspec::params::mode,
      source  => "puppet:///modules/serverspec/${name}"
    }

}
