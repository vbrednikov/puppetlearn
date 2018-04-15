define tomcat::deploy (
    $deploy_url,
    $checksum_value,
    $deploy_path = $::tomcat::deploy_path,
    $checksum = 'md5'
) {
    file{"${deploy_path}/${name}.war":
        ensure => "file",
        source => "${deploy_url}",
        owner  => "$::tomcat::user",
        group  => "$::tomcat::group",
        notify => Exec['purge_context'],
        checksum       => "${checksum}",
        checksum_value => "${checksum_value}",
    }

    exec{'purge_context':
        command     => "/bin/rm -rf ${deploy_path}/${name}",
        refreshonly => true,
        notify      => Service[$::tomcat::service_name],
    }
}
