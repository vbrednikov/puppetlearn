class tomcat::service {

    service {"tomcat":

        ensure => running,
        enable => true,
        require => Package['tomcat'],

    }
}
