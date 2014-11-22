#
class profile::puppet-client::sydney {
  class { '::ccgcommon::hostname': }
  class { '::ccgcommon::puppet-client::sydney': }
}
