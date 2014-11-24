#
class profile::rpmbuild {
  class { '::ccgcommon::source': }
  class { '::repo::repo::ius': }
  class { '::repo::upgrade': }
  class { 'yum::repo::pgdg93':
    stage => 'setup',
  }
}
