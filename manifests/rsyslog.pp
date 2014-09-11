#
class profile::rsyslog {
  class { 'rsyslog::client':
    log_remote            => true,
    spool_size            => '1g',
    remote_type           => 'tcp',
    remote_forward_format => 'RSYSLOG_ForwardFormat',
    log_local             => false,
    log_auth_local        => false,
    custom_config         => undef,
    custom_params         => undef,
    server                => 'log-syd.ec2.ccgapps.com.au',
    port                  => '514',
    remote_servers        => false,
    ssl_ca                => undef,
    log_templates         => false,
    actionfiletemplate    => false
  }

  include monit
  monit::monitor { 'rsyslog': }
}
