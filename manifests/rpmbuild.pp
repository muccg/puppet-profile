#
class profile::rpmbuild {
  include ccgcommon::source
  include repo::epel
  include repo::pgrpms

  file { '/usr/local/src':
    ensure => directory,
    mode   => '0777',
  }
}
