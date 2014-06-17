# Class serverspec::params
#
# This class stores the default configuration of serverspec module
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
#   None
#
class serverspec::params {

  $pkg = 'serverspec'
  $provider = 'gem'
  $config_path = '/etc/serverspec'
  $spec_path = '/etc/serverspec/spec'
  $owner = 'root'
  $group = 'root'
  $mode = '0755'

}
