#
class tomcat (
    $user               = $tomcat::params::user,
    $group              = $tomcat::params::group,
    $config_path        = $tomcat::params::config_path,
    $packages           = $tomcat::params::packages,
    $service_name       = $tomcat::params::service_name,
    $service_state      = $tomcat::params::service_state,

    $shutdown_wait      = $tomcat::params::shutdown_wait,
    $catalina_pid       = $tomcat::params::catalina_pid,
    $tomcat_cfg_loaded  = $tomcat::params::tomcat_cfg_loaded,
    $java_home          = $tomcat::params::java_home,
    $xmx                = $tomcat::params::xmx,
    $xms                = $tomcat::params::xms,
    $max_perm_size      = $tomcat::params::max_perm_size,
    $catalina_base      = $tomcat::params::catalina_base,
    $catalina_home      = $tomcat::params::catalina_home,
    $jasper_home        = $tomcat::params::jasper_home,
    $catalina_tmpdir    = $tomcat::params::catalina_tmpdir,
    $security_manager   = $tomcat::params::security_manager,
    $shutdown_verbose   = $tomcat::params::shutdown_verbose,
    $connector_port     = $tomcat::params::connector_port

)


inherits tomcat::params {

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
