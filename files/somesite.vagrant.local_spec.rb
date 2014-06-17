require 'spec_helper'

## Files and directories

describe file('/etc/apache2/sites-available/10-somesite.vagrant.local.conf') do
  # File should be owned by user and group root with mode 644
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/apache2/sites-enabled/10-somesite.vagrant.local.conf') do
  # Site should be enabled
  it { should be_linked_to '/etc/apache2/sites-available/10-somesite.vagrant.local.conf' }
end
