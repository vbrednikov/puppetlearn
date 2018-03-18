class base inherits base::params {

user { "deploy":
    ensure      => present,
    uid         => 5001,
    password    => '$1$DqULgHGv$nelpTAkdcwiy1GnECARgO0',
    managehome  => true,
}

user { "dojo":
    ensure      => absent,
}

package { ['tree', 'git', 'ntp', 'wget', 'unzip']:
    ensure  => present,
}


file {'/etc/motd':
    ensure   => file,
    content  => "Property of XYZ",
    group    => 0,
    owner    => 0,
    mode     => '0644',
}

service { $base::params::ntp_service:
    ensure  => 'running',
    enable  => true,
    require => [
        Package['ntp'],
    ],
}


}
