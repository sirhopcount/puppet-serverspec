# Class serverspec::helper
#
# This class handles the spec_helper file
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
class serverspec::helper {

  # Load default parameters
  include serverspec::params

  # Place spec_helper
  file{ 'spec_helper.rb':
      ensure  => file,
      path    => "${serverspec::params::spec_path}/spec_helper.rb",
      owner   => $serverspec::params::owner,
      group   => $serverspec::params::group,
      mode    => $serverspec::params::mode ,
      source  => 'puppet:///modules/serverspec/spec_helper.rb',
    }

}
