cask :v1 => 'puppet' do
  version '3.7.5'
  sha256 'bfa923507eb1c62293d547b35111a7b9f3300f9903c9db5d8ca8fae180eb64ae'

  url "http://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  homepage 'http://puppetlabs.com/'
  license :apache

  pkg "puppet-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.puppet'
  depends_on :cask => 'facter'
end
