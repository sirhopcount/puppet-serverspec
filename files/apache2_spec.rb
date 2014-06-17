require 'spec_helper'

## Packages

describe package 'apache2' do
  # Package ntp should be installed.
  it { should be_installed }
end

## Services

describe service 'apache2' do
  # Service ssh should be enabled.
  it { should be_enabled }
end

describe service 'apache2' do
  # Service ssh should be running.
  it { should be_running }
end

describe port(80) do
  # Service should be listening
  it { should be_listening }
end

## Files and directories

describe file '/etc/apache2/httpd.conf' do

  # File should be owned by user and group root with mode 644
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

