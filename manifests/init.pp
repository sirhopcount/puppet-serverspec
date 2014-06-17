# Module serverspec
#
# This module installs, configures and manages serverspec
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
# Sample Usage:
#
#   # serverspec
#   class {'serverspec': }
#
class serverspec{

  include serverspec::package
  include serverspec::helper

  Class['serverspec::package'] -> Class['serverspec::helper']
}
