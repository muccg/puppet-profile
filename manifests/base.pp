#
class profile::base {
  class { '::ccgcommon': }
  class { '::ccgcommon::hostname': }
}
