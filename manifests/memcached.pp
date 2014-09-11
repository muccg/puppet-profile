#
class profile::memcached {
  class { 'memcached': }

  include monit
  monit::monitor { 'memcached': }
}
