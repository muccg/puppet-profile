#
class profile::sydney {
  class { '::ccgcommon::environment::sydney': }
  class { '::ccgcommon::wgetrc::sydney': }
  class { '::ccgcommon::puppet-client::sydney': }
  class { '::repo::sydney': }
}
