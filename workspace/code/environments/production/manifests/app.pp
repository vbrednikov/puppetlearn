node 'node1' {

    include base
    class {'::tomcat':
        xmx           => '128m',
        xms           => '60m',
        user          => 'tomcat',
        group         => 'root',
        service_state => 'running',
    }

    tomcat::deploy {'sysfoo':
        deploy_url     => 'https://3-126643644-gh.circle-artifacts.com/0/tmp/circle-artifacts.uNl0Lc6/sysfoo.war',
        checksum_value => '22e1fed5d1959aea9ff7625cc5c9d267',
    }
}

node 'node2' {

    include base
    class {'::tomcat':
        xmx           => '110m',
        xms           => '61m',
        user          => 'tomcat',
        group         => 'tomcat',
        service_state => 'running',
    }

    tomcat::deploy {'sysfoo':
        deploy_url     => 'https://3-126643644-gh.circle-artifacts.com/0/tmp/circle-artifacts.uNl0Lc6/sysfoo.war',
        checksum_value => '22e1fed5d1959aea9ff7625cc5c9d267',
    }
}


node default {

    notify{'default node':  }

    include base

}
