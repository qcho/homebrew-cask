cask :v1 => 'puppet' do
  version 'latest'
  sha256 :no_check

  url "http://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  homepage 'http://puppetlabs.com/'
  license :apache

  pkg "puppet-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.puppet'
  depends_on :cask => 'facter'
end
