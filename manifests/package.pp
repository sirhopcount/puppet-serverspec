# Class serverspec::package
#
# This class handles the installation of serverspec
#
# Author
#   Adrian van Dongen sirhopcount@goodfellasonline.nl
#
# Version
#   0.1   Initial release
#
# Parameters:
#   None
#
# Requires:
#   serverspec::params
#
class serverspec::package {

  # Load default parameters
  include serverspec::params

  # Install serverspec gem
  package { $serverspec::params::pkg:
    ensure   => 'installed',
    provider => $serverspec::params::provider,
  }

  # Create serverspec and spec directory
  file{ [ $serverspec::params::config_path, $serverspec::params::spec_path,]:
    ensure  => directory,
    owner   => $serverspec::params::owner,
    group   => $serverspec::params::group,
    mode    => $serverspec::params::mode,
  }

}
