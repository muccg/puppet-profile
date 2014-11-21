#
class profile::rpmbuild {
  class { '::ccgcommon::source': }
  class { '::repo::epel': }
  class { '::repo::pgrpms': }
  class { '::repo::ius': }
}
