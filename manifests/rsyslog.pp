#
class profile::rsyslog {
  class { '::rsyslog::client':
    log_remote            => true,
    spool_size            => '1g',
    remote_type           => 'tcp',
    log_local             => false,
    log_auth_local        => false,
    custom_config         => undef,
    custom_params         => undef,
    server                => 'log-syd.ec2.ccgapps.com.au',
    port                  => '514',
    ssl_ca                => undef,
  }

  include monit
  monit::monitor { 'rsyslog': }
}
