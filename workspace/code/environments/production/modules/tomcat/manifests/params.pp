class tomcat::params {

    $user           = 'tomcat'
    $group          = 'tomcat'
    $config_path    = '/etc/tomcat/tomcat.conf'
    $packages       = ['tomcat', 'tomcat-webapps']
    $service_name   = 'tomcat'
    $service_state  = running

    $shutdown_wait     = 30
    $catalina_pid      = '/var/run/tomcat.pid'
    $tomcat_cfg_loaded = 1
    $java_home         = '/usr/lib/jvm/jre'
    $xmx               = '128m'
    $xms               = '68m'
    $max_perm_size     = '128m'
    $catalina_base     = '/usr/share/tomcat'
    $catalina_home     = '/usr/share/tomcat'
    $jasper_home       = '/usr/share/tomcat'
    $catalina_tmpdir   = '/usr/share/tomcat'
    $security_manager  = 'false'
    $shutdown_verbose  = 'false'
    $connector_port    = 8080

}
