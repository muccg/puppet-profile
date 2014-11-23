#
class profile::sydney (
  $puppet_runmode = 'service',
  ) {
  class { '::ccgcommon::environment::sydney': }
  class { '::ccgcommon::wgetrc::sydney': }
  class { '::repo::sydney': }
  class { '::ccgcommon::puppet-client::sydney': 
    runmode => $puppet_runmode,
  }
}
