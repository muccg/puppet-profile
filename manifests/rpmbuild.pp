#
class profile::rpmbuild {
  include ccgcommon::source
  include repo::epel
  include repo::pgrpms
}
