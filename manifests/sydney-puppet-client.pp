#
class profile::sydney-puppet-client {
  class { '::ccgcommon::hostname': }
  class { '::ccgcommon::sydney-puppet-client': }
}
