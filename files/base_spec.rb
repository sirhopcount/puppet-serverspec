require 'spec_helper'

## Packages

describe package 'sysstat' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'atop' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'curl' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'htop' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'multitail' do
  # Package should be installed.
  it { should be_installed }
end
describe package 'ngrep' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'vim' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'swaks' do
  # Package should be installed.
  it { should be_installed }
end

describe package 'tcpdump' do
  # Package should be installed.
  it { should be_installed }
end

## Files and directories

describe command('cat /etc/resolv.conf') do
  it { should return_stdout /8\.8\.8\.8/ }
end
