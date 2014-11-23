#
class profile::rpmbuild {
  class { '::ccgcommon::source': }
  class { '::repo::repo::pgrpms': }
  class { '::repo::repo::ius': }
}
