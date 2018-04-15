define tomcat::deploy (
    $deploy_url,
    $deploy_path = $::tomcat::deploy_path,
) {
    file{"${deploy_path}/${name}.war":
        source => "${deploy_url}",
        owner  => "$::tomcat::user",
        group  => "$::tomcat::group",
        notify => Exec['purge_context'],
        checksum => 'md5',
        checksum_value => '22e1fed5d1959aea9ff7625cc5c9d267',
    }

    exec{'purge_context':
        command     => "/bin/rm -rf ${deploy_path}/${name}",
        refreshonly => true,
        notify      => Service[$::tomcat::service_name],
    }
}
